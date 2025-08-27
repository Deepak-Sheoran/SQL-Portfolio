USE Company;
SHOW TABLES;
SELECT *
FROM Employees;

-- RANK()
SELECT
	Employee_Id, Department, Salary,
    RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS 'Department Salary Rank',
    RANK() OVER(ORDER BY Salary DESC) AS 'Overall Salary Rank'
FROM Employees
ORDER BY Department;

-- DENSE_RANK()
SELECT
	Employee_Id, Department, Salary,
    RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS 'Overall Salary Rank',
    DENSE_RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS 'Overall Salary Dense Rank'
FROM Employees
ORDER BY Department DESC;

-- ROW_NUMBER()
SELECT
	Employee_Id, Department, Salary,
    ROW_NUMBER() OVER(ORDER BY Salary DESC) AS 'Row Number'
FROM Employees;

-- NTILE(n)
SELECT
	Employee_Id, Department, Salary,
    NTILE(4) OVER(ORDER BY Salary DESC) AS 'Overall Bucket Number',
    NTILE(4) OVER(PARTITION BY Department ORDER BY Salary DESC) AS 'Bucket Number'
FROM Employees
ORDER BY Department;

-- FIRST_VALUE(arg)
SELECT
	Employee_Id, Department, Salary,
    FIRST_VALUE(Employee_Id) OVER(ORDER BY Salary DESC) AS 'Overall Highest Salary',
    FIRST_VALUE(Employee_Id) OVER(PARTITION BY Department ORDER BY Salary DESC) AS 'Highest Paid Department'
FROM Employees
ORDER BY Department;


-- 
SELECT
	Employee_Id, Department, Salary,
    FIRST_VALUE(Employee_Id) OVER(ORDER BY Salary DESC) AS 'Overall Highest Salary',
    FIRST_VALUE(Employee_Id) OVER w AS 'Highest Paid Department'
FROM Employees
WINDOW w AS (PARTITION BY Department ORDER BY Salary DESC)
ORDER BY Department;

-- LEAD() and LAG()
SELECT
	Employee_Id, Department, Salary,
    LAG(Salary) OVER(ORDER BY Salary DESC),
    LEAD(Salary) OVER(ORDER BY Salary DESC)
FROM Employees;