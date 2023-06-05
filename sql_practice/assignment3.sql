--Create an ‘Orders’ table which comprises of these columns – 
--‘order_id’, ‘order_date’, ‘amount’, ‘customer_id’
drop table orders
CREATE TABLE  orders (
    order_id int , 
	order_date datetime, 
	amount decimal, 
	customer_id int, 
	
);

INSERT INTO orders (order_id, order_date, amount,customer_id)
VALUES (1, '05-01-2023', '2.5', 1);
INSERT INTO orders (order_id, order_date, amount,customer_id)
VALUES (2, '04-01-2023', '0.5', 2);
INSERT INTO orders (order_id, order_date, amount,customer_id)
VALUES (3, '03-01-2023', '8', 5);
INSERT INTO orders (order_id, order_date, amount,customer_id)
VALUES (4, '04-01-2023', '2', 3);
INSERT INTO orders (order_id, order_date, amount,customer_id)
VALUES (5, '05-01-2023', '4', 4);
INSERT INTO orders (order_id, order_date, amount,customer_id)
VALUES (6, '02-01-2023', '3', 1);

select*from customer

--2)Make an inner join on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column
select o.order_id,o.order_date,o.amount, c.customer_id,c.first_name,c.last_name,c.email from
orders o
inner join customer c
on c.customer_id=o.customer_id

--3)Make left and right joins on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column
select o.order_id,o.order_date,o.amount, c.customer_id,c.first_name,c.last_name,c.email from
orders o
left join customer c
on c.customer_id=o.customer_id
-- right outer join
select o.order_id,o.order_date,o.amount, c.customer_id,c.first_name,c.last_name,c.email from
orders o
right join customer c
on c.customer_id=o.customer_id

--4)Update the ‘Orders’ table, set the amount to be 100 where ‘customer_id’ is 3
update orders
set amount=100
where customer_id=3

select*from orders