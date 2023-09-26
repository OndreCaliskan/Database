--Write an SQL query that returns the project number and name for projects with a budget greater than $100,000.
SELECT ProjectNo,ProjectName
from [ACUN_MEDYA].[dbo].Projs
Where Budget > 100000

--Write an SQL query that returns all works on records where hours worked is less than 10 and the responsibility is 'Manager'.
Select*
from [ACUN_MEDYA].[dbo].Workson
Where Hour <10 AND Responsibility = 'Manager'

--Write an SQL query that returns the employees (number and name only) who have a title of 'EE' or 'SA' and make more than $35,000.
Select EmployeeNo,EmployeeName
From [ACUN_MEDYA].[dbo].Employees
Where (Title = 'EE' OR Title ='SA') AND Salary>35000

--Write an SQL query that returns the employees (name only) in department 'D1'ordered by decreasing salary.
Select EmployeeName
From [ACUN_MEDYA].[dbo].Employees
Where Dno = 'D1'
order by (Salary) ASC

--Write an SQL query that returns the departments (all fields) ordered by ascending department name.
select*
From [ACUN_MEDYA].[dbo].Employees S RIGHT JOIN  [ACUN_MEDYA].[dbo].Projs P ON P.Dno = S.Dno
order by(S.Dno) DESC

--Write an SQL query that returns the employee name, department name, and employee title.
select EmployeeName,DepartmentName,Title
From [ACUN_MEDYA].[dbo].Employees S LEFT JOIN [ACUN_MEDYA].[dbo].Departments D ON D.Dno = S.Dno

--Write an SQL query that returns the project name, hours worked, and project number for all works on records where hours > 10
select ProjectName,Hour,P.ProjectNo
From [ACUN_MEDYA].[dbo].Projs P RIGHT JOIN [ACUN_MEDYA].[dbo].Workson W ON P.ProjectNo = W.ProjectNo
where Hour > 10

--Write an SQL query that returns the project name, department name, and budget for all projects with a budget < $50,000.
select ProjectName,DepartmentName,Budget 
From  [ACUN_MEDYA].[dbo].Projs P LEFT JOIN [ACUN_MEDYA].[dbo].Departments D ON D.Dno = P.Dno
Where Budget < 50000

--Write an SQL query that returns the employee numbers and salaries of all employees in the 'Consulting' department ordered by descending salary.

select*
From  [ACUN_MEDYA].[dbo].Employees S LEFT JOIN [ACUN_MEDYA].[dbo].Departments D ON D.Dno = S.Dno
Where D.DepartmentName = 'Consulting'
Order by (S.Salary) DESC

--Write an SQL query that returns the employee name, project name, employee title, and hours for all works on records.
select EmployeeName,ProjectName,Title,Hour 
From [ACUN_MEDYA].[dbo].Projs P  INNER JOIN [ACUN_MEDYA].[dbo].Employees S ON P.Dno = S.Dno INNER JOIN [ACUN_MEDYA].[dbo].Workson W ON P.ProjectNo = W.ProjectNo
