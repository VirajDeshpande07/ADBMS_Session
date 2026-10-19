/* WHERE ,SELECT DISTINCT, AND, OR, NOT, IN, NOT IN, BETWEEN, LIKE, LIMIT, IS NULL*/
create database organization;
use organization;
CREATE table employee (EmpID int not null primary key,
First_name varchar(15), Last_Name varchar(15), Gender varchar(5), Role varchar(15), Dept varchar(15), Manager_id varchar(10));
INSERT INTO Employee values(1,"john","alien","M","Team-Leader","Retail","M11");
INSERT INTO Employee values(2,"alex","mark","M","Coordinator","Resale","M11");
INSERT INTO Employee values(3,"josh","bon","M","Assistant","Wholesale","M11");
INSERT INTO Employee values(4,"harry","luck","M","Team-member","Retail","M11");

select distinct role from employee order by role;
/* AND operator is a logical operator that combines two or more BOOLEAN expressions and returns 1,0 or NULL.
The AND operator is used for filtering data with the WHERE cluase */

select * from employee where role = "Assistant" and dept = "Wholesale";

/* OR operator : THE OR operator is a logival operator that combines two Boolean expressions is true.
The OR operator is used for filtering data with the WHERE clause.*/


select * from employee where role = "Team-Leader" or role="Coordinator";

/* IN operator : The IN operator is used to determine if a value matches any other value in a list.*/
select * from employee where role in ('Assistant','Team-Member');

/*NOT IN operator : It is formed combining NOT and IN operators.
THe NOT IN operator, in contrast to IN operator.*/
select * from employee where role not in ('Assistant','Team-Member');

Alter table employee add column Experience int;
update employee set experience = 0 where EmpId = 01;
update employee set experience = 8 where EmpId = 02;
update employee set experience = 10 where EmpId = 03;
update employee set experience = 10 where EmpId = 04;

select * from employee where Experience between 6 and 10; /*between operator*/
select * from employee where Experience = 0 OR Experience = 10;

select * from employee where last_name like 'M%';
select * from employee order by experience limit 5;
insert into employee (empid, first_name,last_name,gender,role,dept,experience)values
('Usha','Yadav','F','President','Finance',10);
