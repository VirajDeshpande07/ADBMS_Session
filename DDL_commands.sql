-- DML Commands
CREATE DATABASE college;
CREATE TABLE Employees(EmpID int, First_Name varchar(10), Last_name varchar(10), EmpAge int, EmpZone varchar(10));
desc Employees;
Insert into Employees values(01,'Viraj','Deshpande',21,'East'); -- single row insertion syntax.
Insert into Employees values(02,'Viraj','Deshpande',21,'West'); -- single row insertion syntax.

insert into employees(EmpID , Firstname,Lastname,EmAge,EmpZone)values(03,'ABC','XYZ',22,'North'),
(04,'PQR','UVW',25,'South'),
(05,'DEF','hij',29,Null); -- multiple row insertion syntax.

SELECT * FROM Employees;

update employees set EmpZone='East' where EmpId=05;

update employees set EmAge=40, EmpZone='North' where EmpID=02;

Delete from Employees where EmpID=05;
truncate employees;

create database company_db;
use company_db;
create table Employee(EmpID int not null, Firstname varchar(10), Lastname varchar(10), EmpAge int);
desc employee;
-- Unique key constraints;
create table emp1(empId int not null, Firstname varchar(10), lastname varchar(10));
insert into emp1 values(1,'Ravi','Kumar');
insert into emp1 values(1,'Ravi','Kumar');
insert into emp1 values(1,'Ravi','Kumar');
insert into emp1 values(1,'Ravi','Kumar');

select * from emp1;

-- check constraints while creating table 
create table emp3(empid int not null, firstname varchar(10), Lastname varchar(10), empage int, check(EmpAge>20));
insert into emp3 values(1,'Arjun','Kapoor', 22);
insert into emp3 values(1,'Arjun','Kapoor', 24);
insert into emp3 values(1,'Arjun','Kapoor', 23);
select*from emp3;
-- alter table emp3 add column salary int;
alter table emp3 drop column salary;
alter table emp3 add column salary int,add check(salary>=50000);
insert into emp3 values (4,'Nupur','Shah',26,60000);
select * from emp3;
show create table emp3; 











