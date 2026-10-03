CREATE DATABASE institute;
USE institute;
CREATE TABLE staff(
    staff_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    DOB DATE,
    dept_id INT
);

CREATE TABLE department(
      dept_id INT,
      name varchar(10),
      dept_location varchar(10));
      
      ALTER TABLE staff ADD Location varchar(10);
      ALTER TABLE staff ADD (age INT, contact_no INT);
      
	-- change the data type of column in existing table
    ALTER TABLE staff MODIFY first_name text;
    ALTER TABLE staff MODIFY Location varchar(50);
    -- add primary key on staff and dept tables.
    ALTER TABLE staff ADD Primary Key (staff_id);
    ALTER TABLE department ADD Primary Key (dept_id);
	 -- to remove pk from table
     ALTER TABLE staff DROP PRIMARY KEY;
     
     -- to add foreign key.
     ALTER TABLE staff ADD FOREIGN KEY(dept_id) REFERENCES department(dept_id);
     ALTER TABLE staff ADD constraint fk_staff_department foreign key(dept_id) references department(dept_id);
     