SHOW DATABASES;
USE Company;
SELECT DATABASE();
CREATE TABLE IF NOT EXISTS Employees
(
	Employee_Id SMALLINT UNSIGNED AUTO_INCREMENT,
    Department VARCHAR(20) NOT NULL DEFAULT 'Not Assigned',
    Salary MEDIUMINT UNSIGNED DEFAULT 15000,
    PRIMARY KEY(Employee_Id)
);
SHOW COLUMNS
FROM Employees;
INSERT INTO Employees (Department, Salary) VALUES
('Engineering', 80000),
('Engineering', 69000),
('Engineering', 70000),
('Engineering', 103000),
('Engineering', 67000),
('Engineering', 89000),
('Engineering', 91000),
('Sales', 59000),
('Sales', 70000),
('Sales', 159000),
('Sales', 72000),
('Sales', 60000),
('Sales', 61000),
('Sales', 61000),
('Customer service', 38000),
('Customer service', 45000),
('Customer service', 61000),
('Customer service', 40000),
('Customer service', 31000),
('Customer service', 56000),
('Customer service', 55000);