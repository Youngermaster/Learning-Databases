SELECT name FROM master.dbo.sysdatabases

-- Uses TSQL2019 database
USE TSQL2019;
GO

-- Bring all the data from the table HR.Employees
SELECT * FROM HR.Employees;

-- Bring the id and the Full name from the table HR.Employees
SELECT empid, lastname + ' ' + firstname as fullName FROM HR.Employees;