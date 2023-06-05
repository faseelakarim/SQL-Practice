--1. Arrange the ‘Orders’ dataset in decreasing order of amount
select *from orders
order by amount desc
-- 2. Create a table with name ‘Employee_details1’ and comprising of these columns – ‘Emp_id’,
--‘Emp_name’, ‘Emp_salary’. Create another table with name ‘Employee_details2’, which comprises of same columns as first table.

create table Employee_details1
(
Emp_id int,
Emp_name varchar(255),
Emp_salary int,
)
INSERT INTO Employee_details1 (Emp_id, Emp_name, Emp_salary)
VALUES (1, 'Zara', 100000);
INSERT INTO Employee_details1 (Emp_id, Emp_name, Emp_salary)
VALUES (2, 'Aliya', 200000);
INSERT INTO Employee_details1 (Emp_id, Emp_name, Emp_salary)
VALUES (3, 'Maria', 100000);
INSERT INTO Employee_details1 (Emp_id, Emp_name, Emp_salary)
VALUES (4, 'Alyssa', 300000);
drop table Employee_details2
create table Employee_details2
(
Emp_id int,
Emp_name varchar(255),
Emp_salary int,
)
INSERT INTO Employee_details2 (Emp_id, Emp_name, Emp_salary)
VALUES (1, 'Zara', 100000);
INSERT INTO Employee_details2 (Emp_id, Emp_name, Emp_salary)
VALUES (2, 'Osaro', 500000);
INSERT INTO Employee_details2 (Emp_id, Emp_name, Emp_salary)
VALUES (3, 'Frank', 50000);
INSERT INTO Employee_details2 (Emp_id, Emp_name, Emp_salary)
VALUES (4, 'George', 400000);

--3. Apply the union operator on these two tables

select * from Employee_details1
union 
select *from Employee_details2

--4. Apply the intersect operator on these two tables
select * from Employee_details1
intersect
select *from Employee_details2
--5. Apply the except operator on these two tables
select * from Employee_details1
except
select *from Employee_details2