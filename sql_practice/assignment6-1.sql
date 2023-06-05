-- 1 Display the “FIRST_NAME” from Employee table using the alias name as Employee_name.
select first_name as Employee_name  from Employee 
--2 Display “LAST_NAME” from Employee table in upper case.
select upper( last_name) as Employee_last_name  from Employee 
--3 Display unique values of DEPARTMENT from EMPLOYEE table.
select DISTINCT department as different_departments from Employee
--4 Display the first three characters of LAST_NAME from EMPLOYEE table.
 select left( last_name,3) as first_3_ltters_last_name  from Employee
--5 Display the unique values of DEPARTMENT from EMPLOYEE table and prints its length.
select DISTINCT department as different_departments,len(department) as length_ from Employee
--6 Display the FIRST_NAME and LAST_NAME from EMPLOYEE table into a single column AS FULL_NAME a space char should separate them..
select CONCAT(first_name , ' ' , last_name ) as Name_ from Employee
--7 DISPLAY all EMPLOYEE details from the employee table order by FIRST_NAME Ascending.
select* from Employee 
order by first_name 
--8. Display all EMPLOYEE details order by FIRST_NAME Ascending and DEPARTMENT Descending.
select* from Employee 
order by first_name, department desc;
--9 Display details for EMPLOYEE with the first name as “VEENA” and “KARAN” from EMPLOYEE table.
select* from Employee 
where first_name= 'veena' or first_name='karan'
--10 Display details of EMPLOYEE with DEPARTMENT name as “Admin”.
select* from Employee 
where department= 'admin' 
--11 DISPLAY details of the EMPLOYEES whose FIRST_NAME contains ‘V’.
select* from Employee 
where first_name like '%v%'
--12 DISPLAY details of the EMPLOYEES whose SALARY lies between 100000 and 500000.
select* from Employee 
where salary >100000 and salary<500000
--13 Display details of the employees who have joined in Feb-2020.
select* from Employee 
WHERE DATEPART(YY,joining_date) = ('2020') and DATEPART(mm,joining_date) = ('02')
--14 Display employee names with salaries >= 50000 and <= 100000.
select first_name, last_name from Employee
where salary >= 50000 and salary<= 100000
--16 DISPLAY details of the EMPLOYEES who are also Managers.
select e.* ,t.Employee_title,t.effective_date from Employee e
join
 Employee_Title t
on e.Employee_id=t.Employee_ref_id
where Employee_title='manager'
--17 DISPLAY duplicate records having matching data in some fields of a table.
SELECT Employee_ref_id,Bonus_Date, COUNT(*) as count
FROM Employee_bonus
GROUP BY Employee_ref_id,Bonus_Date
HAVING COUNT(*) > 1

--18 Display only odd rows from a table.
select * from( 
SELECT Employee.*, ROW_NUMBER() OVER(ORDER BY Employee_id) AS 'RowNumber' 
FROM Employee
) d where (RowNumber % 2) = 1 
--19 Clone a new table from EMPLOYEE table.
select * into Employee_clone from Employee;
--20 DISPLAY the TOP 2 highest salary from a table.
select top 3 salary from Employee
order by salary desc
--21. DISPLAY the list of employees with the same salary.

SELECT e1.first_name,e1.last_name,e1.salary
FROM Employee e1
right JOIN
(
   SELECT salary
   FROM Employee
   GROUP BY salary
   HAVING COUNT(*) > 1
) grp ON e1.salary = grp.salary;

--22 Display the second highest salary from a table.
SELECT MAX(salary) as second_highest_salary
FROM Employee WHERE salary < (SELECT MAX(salary) FROM Employee);
--23 Display the first 50% records from a table.
SELECT TOP 50 PERCENT * FROM Employee;
--24. Display the departments that have less than 4 people in it.
select department,count(*) as number_of_employees from	Employee 
group by department
having count(*)<4
---25. Display all departments along with the number of people in there.
select department,count(*) as number_of_employees from	Employee 
group by department
--26 Display the name of employees having the highest salary in each department.
SELECT e.first_name,
       e.last_name,e.salary,e.department
FROM Employee e
WHERE e.salary IN
    (SELECT max(salary)
     FROM Employee
     GROUP BY department) ;
	
--27 Display the names of employees who earn the highest salary.
SELECT e.first_name,
       e.last_name,e.salary
FROM Employee e
WHERE e.salary IN
    (SELECT max(salary)
     FROM Employee
    ) 
--28 Diplay the average salaries for each department

select avg(salary) as average_of_salary, department from Employee
group by department
select *from Employee
--29 display the name of the employee who has got maximum bonus
select x.Employee_id,x.first_name,x.last_name,a.total_bonus_obtained from employee x
join 
(
select b.Employee_ref_id, sum(b.Bonus_Amount)as total_bonus_obtained from Employee e
join Employee_bonus b
on e.Employee_id=b.Employee_ref_id
group by b.Employee_ref_id
) a on x.Employee_id=a.Employee_ref_id 
where a.total_bonus_obtained in (SELECT MAX (total_bonus_obtained) FROM (
select b.Employee_ref_id, sum(b.Bonus_Amount)as total_bonus_obtained from Employee e
join Employee_bonus b
on e.Employee_id=b.Employee_ref_id
group by b.Employee_ref_id
) a);


--30 Display the first name and title of all the employees
select e.first_name,t.Employee_title
from Employee e
left join Employee_Title t 
on t.Employee_ref_id=e.Employee_id


