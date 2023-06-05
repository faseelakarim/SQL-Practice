--1)Create a customer table which comprises of these columns – ‘customer_id’, ‘first_name’, 
--‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’
CREATE TABLE customer (
    customer_id int , 
	first_name varchar(255), 
	last_name varchar(255), 
	email varchar(255), 
	address varchar(255), 
	city varchar(255),
	state varchar(255),
	zip varchar(255)
);
--2)Insert 5 new records into the table

INSERT INTO customer (customer_id, first_name, last_name,email,address,city,state,zip)
VALUES (1, 'john', 'smith', 'johnsmith@gmail.com','305 - 14th Ave. S. Suite 3B','Seattle','Washington','98128');
INSERT INTO customer (customer_id, first_name, last_name,email,address,city,state,zip)
VALUES (2, 'george', 'huang', 'georgehuang@gmail.com','Keskuskatu 45','sanjose','finland','21240');
INSERT INTO customer (customer_id, first_name, last_name,email,address,city,state,zip)
VALUES (3, 'gimy', 'mark', 'gimymark@gmail.com','200 west drive','sanjose','bc','56789');
INSERT INTO customer (customer_id, first_name, last_name,email,address,city,state,zip)
VALUES (4, 'peggy', 'sikka', 'peggysikka@gmail.com','145-49th avenue,hudson street','burnaby','bc','34562');
INSERT INTO customer (customer_id, first_name, last_name,email,address,city,state,zip)
VALUES (5, 'elham', 'fahad', 'elhamfahad@gmail.com','305 - 14th Ave. fraser street','edmonds','alberta','45123');

--3 Select only the ‘first_name’ & ‘last_name’ columns from the customer table
select first_name,last_name from customer;

--4)Select those records where ‘first_name’ starts with “G” and city is ‘San Jose’
select * from customer
where first_name like'g%'and city='sanjose'

