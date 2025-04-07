	
	-- Create a table Employees with columns: EmpID INT, Name (VARCHAR(50)), and Salary (DECIMAL(10,2)).

Create table Employees (EmpID int, Name varchar(50), Salary decimal(10,2))

	-- Insert three records into the Employees table using different INSERT INTO approaches (single-row insert and multiple-row insert).

select * from Employees

Insert into Employees values (1, 'Sarvar', 2500000)

Insert into Employees (EmpID, Name, Salary) values (2, 'Samandar', 2200000)

Insert into Employees (EmpID, Name, Salary) 
Values
	(3, 'Zilola', 2100000),
	(4, 'Sabina', 2700000),
	(5, 'Aziza', 2900000);

	-- Update the Salary of an employee where EmpID = 1

Update Employees
Set Salary = 3000000
Where EmpID = 1 

	-- Delete a record from the Employees table where EmpID = 2.

Delete from Employees
Where EmpID = 2

	-- Demonstrate the difference between DELETE, TRUNCATE, and DROP commands on a test table.

/*  
  DELETE: Removes specific rows (data) but keeps the table.
	TRUNCATE: Removes all rows but keeps the table structure.
	DROP: Completely removes the table and its data
*/

	-- Modify the Name column in the Employees table to VARCHAR(100).

Alter table Employees
Alter column name Varchar(100)

	-- Add a new column Department (VARCHAR(50)) to the Employees table.

Alter table Employees
Add Department Varchar(50);

	-- Change the data type of the Salary column to FLOAT.

Alter table Employees
Alter column salary float;

	-- Create another table Departments with columns DepartmentID (INT, PRIMARY KEY) and DepartmentName (VARCHAR(50)).

Create table Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50));

	select * from Departments

	-- Remove all records from the Employees table without deleting its structure.

TRUNCATE TABLE Employees;

	-- Insert five records into the Departments table using INSERT INTO SELECT from an existing table.


