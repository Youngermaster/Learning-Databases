SELECT name FROM master.dbo.sysdatabases

-- Uses TSQL2019 database
USE TSQL2019;
GO

-- Bring all the data from the table HR.Employees
SELECT * FROM HR.Employees;

-- Bring the id and the Full name from the table HR.Employees
SELECT empid, lastname + ' ' + firstname as fullName FROM HR.Employees;

-- * Some Bugs and its solutions

-- The line below doesn't work
SELECT custid, orderid FROM Sales.Orders GROUP BY orderid;
-- The line below does work
SELECT custid, orderid FROM Sales.Orders;

-- Bring the id and the Full name from the table HR.Employees
-- TODO: Add the Bug descrition
-- The line below doesn't work
SELECT E.empid, Employee.lastname + ' ' + E.firstname as fullName FROM HR.Employees AS E;
-- The line below does work
SELECT E.empid, E.lastname + ' ' + E.firstname as fullName FROM HR.Employees AS E;

-- Bring the id and the Full name from the table HR.Employees
-- TODO: Add the Bug descrition
-- The line below doesn't work
SELECT empid, lastname firstname FROM HR.Employees;
-- The line below does work
SELECT empid, lastname + ' ' + firstname as fullName FROM HR.Employees;

