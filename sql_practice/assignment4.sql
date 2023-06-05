----1. Use the inbuilt functions and find the minimum, maximum and average amount from the orders
--table

select min(amount) as minimum,max(amount)as maximum,avg(amount) as average
from orders

--2. Create a user-defined function, which will multiply the given number with 10
CREATE FUNCTION
 multiply_10(@number int)
RETURNS  int
AS 
begin
  return @number*10
end;
declare @number1 int
exec @number1= multiply_10 @number=8
SELECT @number1;


--3. Use the case statement to check if 100 is less than 200, greater than 200 or equal to 200 and
--print the corresponding value
select
CASE
	when 100<200 then '100 is less than 200'
	when 100>200 then '100 is greater than 200'
	when 100=200 then '100 is equal to 200'
END 