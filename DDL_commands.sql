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