---1. Find out the selling cost AVG for packages developed in Pascal.
select avg(SCOST) as average_selling_cost from SOFTWARE
where DEVELOPIN='PASCAL'
--2. Display Names, Ages of all Programmers.
select PNAME, cast((DATEDIFF(m, DOB, GETDATE())/12) as varchar) + ' Y & ' + 
       cast((DATEDIFF(m, DOB, GETDATE())%12) as varchar) + ' M' as Age
	   from PROGRAMMER
--3. Display the Names of those who have done the DAP Course.
select PNAME from STUDIES
where COURSE='DAP'
--4. Display the Names and Date of Births of all Programmers Born in January.
select PNAME,DOB from PROGRAMMER
where DATEPART(mm,DOB) = ('01')
--5. What is the Highest Number of copies sold by a Package?

---6. Display lowest course Fee.
select distinct COURSE,COURSEFEE From STUDIES
where COURSEFEE in( select min(COURSEFEE) as minimum_fees from STUDIES)
--7. How many programmers done the PGDCA Course?
select count(*)as number_of_progmrs_pgdca from PROGRAMMER p
left join
 STUDIES s
on p.PNAME=s.PNAME
where s.COURSE='PGDCA'
--8. How much revenue has been earned thru sales of Packages Developed in C.

--9. Display the Details of the Software Developed by Ramesh.
select * from SOFTWARE
where PNAME='RAMESH'
--10. How many Programmers Studied at Sabhari?
select count(*)as number_of_progmrs_Sabhari from PROGRAMMER p
left join
 STUDIES s
on p.PNAME=s.PNAME
where s.INSTITUTE='Sabhari'
--11. Display details of Packages whose sales crossed the 2000 Mark.

--12. Display the Details of Packages for which Development Cost have been recovered.

--13. What is the cost of the costliest software development in Basic?
--14. How many Packages Developed in DBASE?
select count(*) as packages_in_dbase from SOFTWARE
where DEVELOPIN='DBASE'
--15. How many programmers studied in Pragathi?
select count(*)as number_of_progmrs_Pragathi from PROGRAMMER p
left join
 STUDIES s
on p.PNAME=s.PNAME
where s.INSTITUTE='PRAGATHI'
--16. How many Programmers Paid 5000 to 10000 for their course?
select count(*)as number_of_progmrs_paid5000to10000 from PROGRAMMER p
left join
 STUDIES s
on p.PNAME=s.PNAME
where s.COURSEFEE>=5000 and s.COURSEFEE<=10000
--17. What is AVG Course Fee
select avg(COURSEFEE) as avg_course_fee
from STUDIES
--18. Display the details of the Programmers Knowing C.

--19. How many Programmers know either COBOL or PASCAL.
select COUNT(*) from PROGRAMMER
where PROF1='COBOL' OR PROF1='PASCAL' OR PROF2='COBOL' OR PROF2='PASCAL'
--20. How many Programmers Don’t know PASCAL and C
SELECT COUNT (PNAME) AS PROGRAMMERS FROM PROGRAMMER WHERE PROF1 IN ('COBOL' ,'PASCAL' ) OR 
PROF2 IN ('COBOL' ,'PASCAL' );
--21. How old is the Oldest Male Programmer.

select TOP 1 with ties PNAME, cast((DATEDIFF(m, DOB, GETDATE())/12) as varchar) + ' Y & ' + 
       cast((DATEDIFF(m, DOB, GETDATE())%12) as varchar) + ' M' as Age
	   from PROGRAMMER
	   where GENDER='M'
	   order by Age desc

--22. What is the AVG age of Female Programmers?
SELECT AVG ((DATEDIFF(d,DOB,GETDATE()))/365) as average_age FROM PROGRAMMER WHERE GENDER='F';

--23. Calculate the Experience in Years for each Programmer and Display with their names in Descending order.
select  PNAME, cast((DATEDIFF(m, DOJ, GETDATE())/12) as varchar) + ' Y & ' + 
       cast((DATEDIFF(m, DOJ, GETDATE())%12) as varchar) + ' M' as EXPERIENCE
	   from PROGRAMMER
	   order by EXPERIENCE desc
---24. Who are the Programmers who celebrate their Birthday’s During the Current Month?
select  PNAME,DOB from PROGRAMMER WHERE MONTH(GETDATE())=MONTH(DOB)

--25. How many Female Programmers are there?
SELECT COUNT(PNAME) AS number_of_female_progmrs from PROGRAMMER
WHERE GENDER='F'
--26. What are the Languages studied by Male Programmers.
select DISTINCT PROF1,PROF2 from PROGRAMMER
where GENDER='M'

select DISTINCT PROF1 as languages from PROGRAMMER
where GENDER='M'
UNION 
select DISTINCT PROF2 from PROGRAMMER
where GENDER='M'

--27. What is the AVG Salary?
select avg(salary) as avg_salary from  PROGRAMMER
--28. How many people draw salary 2000 to 4000?
select count(PNAME)AS COUNT_PEOPLE FROM PROGRAMMER
where salary between 2000 and 4000
--29. Display the details of those who don’t know Clipper, COBOL or PASCAL.
SELECT * FROM PROGRAMMER WHERE PROF1 NOT IN ('CLIPPER','COBOL','PASCAL') AND PROF2 NOT IN ('CLIPPER','COBOL','PASCAL')
--30. Display the Cost of Package Developed By each Programmer.
SELECT PNAME,sum(DCOST) as  Cost_of_Package from SOFTWARE
group by PNAME
--31. Display the sales values of the Packages Developed by the each Programmer.
SELECT PNAME,sum(SCOST) as  Cost_of_Package from SOFTWARE
group by PNAME
---32. Display the Number of Packages sold by Each Programmer.
33. Display the sales cost of the packages Developed by each Programmer Language wise.
MS SQL Certification Training
support@intellipaat.com - +91-7022374614 - US: 1-800-216-8930 (Toll Free)
34. Display each language name with AVG Development Cost, AVG Selling Cost and
AVG Price per Copy.
35. Display each programmer’s name, costliest and cheapest Packages Developed by him or
her.
36. Display each institute name with number of Courses, Average Cost per Course.
37. Display each institute Name with Number of Students.
38. Display Names of Male and Female Programmers. Gender also.
39. Display the Name of Programmers and Their Packages.
40. Display the Number of Packages in Each Language Except C and C++.
41. Display the Number of Packages in Each Language for which Development Cost is
less than 1000.
42. Display AVG Difference between SCOST, DCOST for Each Package.
43. Display the total SCOST, DCOST and amount to Be Recovered for each
Programmer for Those Whose Cost has not yet been Recovered.
44. Display Highest, Lowest and Average Salaries for those earning more than 2000.
45. Who is the Highest Paid C Programmers?
46. Who is the Highest Paid Female COBOL Programmer?
47. Display the names of the highest paid programmers for each Language.
48. Who is the least experienced Programmer.
49. Who is the most experienced male programmer knowing PASCAL.
50. Which Language is known by only one Programmer?
51. Who is the Above Programmer Referred