-- Create the following Tables and insert the values accordingly and Perform the tasks mentioned below.
--Employee Table
DROP table Employee
create table Employee
(Employee_id int not null , 
	first_name varchar(255), 
	last_name varchar(255), 
	salary int, 
	joining_date datetime, 
	department varchar(255),
	PRIMARY KEY (Employee_id)
)
INSERT INTO Employee (Employee_id, first_name, last_name,salary,joining_date,department)
VALUES (1, 'Anika', 'Arora', 100000,'2020-02-14 9:00:00','HR');
INSERT INTO Employee (Employee_id, first_name, last_name,salary,joining_date,department)
VALUES (2, 'Veena', 'Verma', 80000,'2011-06-15 9:00:00','Admin');
INSERT INTO Employee (Employee_id, first_name, last_name,salary,joining_date,department)
VALUES (3, 'Vishal', 'Singhal', 300000,'2020-02-16 9:00:00','HR');
INSERT INTO Employee (Employee_id, first_name, last_name,salary,joining_date,department)
VALUES (4, 'Sushanth', 'Singh',500000,'2020-02-17 9:00:00','Admin');
INSERT INTO Employee (Employee_id, first_name, last_name,salary,joining_date,department)
VALUES (5, 'Bhupal', 'Bhati', 500000,'2011-06-18 9:00:00','Admin');
INSERT INTO Employee (Employee_id, first_name, last_name,salary,joining_date,department)
VALUES (6, 'Dheeraj', 'Diwan', 200000,'2011-06-19 9:00:00','Account');
INSERT INTO Employee (Employee_id, first_name, last_name,salary,joining_date,department)
VALUES (7, 'Karan', 'Kumar',7500,'2020-01-14 9:00:00','Account');
INSERT INTO Employee (Employee_id, first_name, last_name,salary,joining_date,department)
VALUES (8, 'Chandrika', 'Chauhan', 90000,'2011-04-15 9:00:00','Admin');

drop table Employee_bonus
create table Employee_bonus
(Employee_ref_id int ,  
	Bonus_Amount int, 
	Bonus_Date datetime,
	 FOREIGN KEY (Employee_ref_id) REFERENCES Employee(Employee_id)
)
select* from Employee_bonus
INSERT INTO Employee_bonus (Employee_ref_id, Bonus_Amount, Bonus_Date)
VALUES (1, 5000,'2020-02-16 0:00:00');
INSERT INTO Employee_bonus (Employee_ref_id, Bonus_Amount, Bonus_Date)
VALUES (2, 3000,'2011-06-16 0:00:00');
INSERT INTO Employee_bonus (Employee_ref_id, Bonus_Amount, Bonus_Date)
VALUES (3, 4000,'2020-02-16 0:00:00');
INSERT INTO Employee_bonus (Employee_ref_id, Bonus_Amount, Bonus_Date)
VALUES (1, 4500,'2020-02-16 0:00:00');
INSERT INTO Employee_bonus (Employee_ref_id, Bonus_Amount, Bonus_Date)
VALUES (2, 3500,'2011-06-16 0:00:00');
create table Employee_Title
(Employee_ref_id int ,  
	Employee_title varchar(255), 
	effective_date datetime
)
select*from Employee_Title
INSERT INTO Employee_Title (Employee_ref_id, Employee_title, effective_date)
VALUES (1, 'Manager','2016-02-20 0:00:00');
INSERT INTO Employee_Title (Employee_ref_id, Employee_title, effective_date)
VALUES (2, 'Executive','2016-06-11 0:00:00');
INSERT INTO Employee_Title (Employee_ref_id, Employee_title, effective_date)
VALUES (8, 'Executive','2016-06-11 0:00:00');
INSERT INTO Employee_Title (Employee_ref_id, Employee_title, effective_date)
VALUES (5, 'Manager','2016-06-11 0:00:00');
INSERT INTO Employee_Title (Employee_ref_id, Employee_title, effective_date)
VALUES (4, 'Asst.Manager','2016-06-11 0:00:00');
INSERT INTO Employee_Title (Employee_ref_id, Employee_title, effective_date)
VALUES (7, 'Executive','2016-06-11 0:00:00');
INSERT INTO Employee_Title (Employee_ref_id, Employee_title, effective_date)
VALUES (6, 'Lead','2016-06-11 0:00:00');
INSERT INTO Employee_Title (Employee_ref_id, Employee_title, effective_date)
VALUES (3, 'Lead','2016-06-11 0:00:00');



