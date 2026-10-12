create table orders (
   order_id INT primary key,
   customer_name varchar(10),
   status varchar(20)
);
desc orders;
set autocommit = 0;
Insert into orders Values(101, 'Geet', 'Pending');
Insert into orders values(102, 'Bob', 'Pending');
Savepoint sp1;
select * from orders;
-- update one order
Update orders set customer_name = 'Raj' where order_id = 101;
rollback to savepoint sp1;

Update orders set status = "Complete" where order_id = 102;
