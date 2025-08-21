USE Company;
SHOW TABLES;
SELECT *
FROM Employees;

SELECT Department, ROUND(AVG(Salary), 2) AS 'Avergae Department Salary'
FROM Employees
GROUP BY Department;

-- OVER() clause
SELECT
	Employee_Id,
	Department,
    Salary,
	ROUND(AVG(Salary) OVER(), 2) AS 'Company Salary Average'
FROM Employees;

-- OVER(PARTITION BY) clause
SELECT
	Employee_Id,
	Department,
    Salary,
	ROUND(AVG(Salary) OVER(PARTITION BY Department), 2) AS 'Department Salary Average'
FROM Employees;


SELECT
	Employee_Id,
	Department,
    Salary,
	ROUND(AVG(Salary) OVER(PARTITION BY Department), 2) AS 'Department Salary Average',
    Salary - ROUND(AVG(Salary) OVER(PARTITION BY Department), 2) AS 'Salary Compared to Department Average'
FROM Employees;

-- OVER(PARTITION BY ... ORDER BY ...) clause
SELECT
	Employee_Id,
	Department,
    Salary,
    SUM(Salary) OVER(PARTITION BY Department ORDER BY Salary DESC) AS 'Rolling Department Salary',
	SUM(Salary) OVER(PARTITION BY Department) AS 'Total Department Salary'
FROM Employees;
-- ORDER BY Department ASC, Salary DESC;

SELECT
	Employee_Id,
	Department,
    Salary,
    MIN(Salary) OVER(PARTITION BY Department ORDER BY Salary DESC) AS 'Rolling Minimum Department Salary'
FROM Employees;