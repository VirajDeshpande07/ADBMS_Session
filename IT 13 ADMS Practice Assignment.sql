Create Database CompanyDB;
Use CompanyDB;
Create Table Employees(EmpID int primary key, EmpName Varchar(10), Salary int ,JoinDate date);
Select * from Employees;
Create Table Department(DeptID int primary key, DeptName varchar(10));
Select * from Department;
Alter table employees add column Email varchar(100);
Alter table Department add column dept_location varchar(100);
Alter table employees add column Phone int not null;
Alter table Employees Modify EmpName varchar(100);
Alter table Department drop primary key;
ALTER TABLE Department
ADD PRIMARY KEY (DeptID);
ALTER TABLE Employees
ADD CONSTRAINT fk_dept
FOREIGN KEY (DeptID)
REFERENCES Department(DeptID);
Alter table employees add column DeptID int;
Show create table Department;
ALTER TABLE Employees
RENAME COLUMN EmpName TO EmployeeName;
Desc employees;
Alter table employees add column Age int;
ALTER TABLE Employees
ADD CONSTRAINT chk_age CHECK (Age >= 18),
ADD CONSTRAINT chk_salary CHECK (Salary > 20000);
Show create table employees;
Alter table Employees drop column phone;
Desc employees;
RENAME TABLE Employees TO EmployeeDetails;
Desc EmployeeDetails;
ALTER TABLE EmployeeDetails
DROP CHECK chk_age,
DROP CHECK chk_salary;
Show databases;
Show create table EmployeeDetails;
ALTER TABLE EmployeeDetails
DROP FOREIGN KEY fk_dept;
Drop table Department;
Show tables;
Drop database CompanyDB;
