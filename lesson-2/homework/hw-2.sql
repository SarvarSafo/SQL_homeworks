	
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


INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT DISTINCT DepartmentID, DepartmentName
FROM Employees
WHERE DepartmentID IS NOT NULL AND DepartmentName IS NOT NULL; 

	-- Update the Department of all employees where Salary > 5000 to 'Management'.

UPDATE Employees 
SET Department = 'Management'
WHERE Salary > 5000;

select * from Employees

	-- Write a query that removes all employees but keeps the table structure intact.

Delete from Employees

	-- Drop the Department column from the Employees table.

	Alter table Employees
	Drop column Department;

	-- Rename the Employees table to StaffMembers using SQL commands.

	Exec sp_rename 'Employees', 'StaffMembers';

	select Name from Staffmembers

	-- Write a query to completely remove the Departments table from the database.

drop table Departments
	
	-- Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)

Create table Products (ProductID int Primary Key,ProductName VARCHAR(20), Category VARCHAR(20), Price DECIMAL(10,2))			

	select * from Products

	-- Add a CHECK constraint to ensure Price is always greater than 0.

	ALTER TABLE Products
	ADD CONSTRAINT chk_Price_GreaterThanZero CHECK (Price > 0);

	-- Modify the table to add a StockQuantity column with a DEFAULT value of 50.

Alter table Products
Add StockQuantity Int default 50;

	--Insert 5 records into the Products table using standard INSERT INTO queries.

Insert into Products (ProductID, ProductName, Category, Price, StockQuantity) 
values
(1, 'Shokolad', 'Shirinlik', 10000, 12),
(2, 'Qaymoq', 'Sut', 20000, 5),
(3, 'Saqich', 'Shirinlik', 2000, 86),
(4, 'Qovurga', 'Gosht', 100000, 10),
(5, 'Bulochka', 'Non', 3000, 57);

	-- Use SELECT INTO to create a backup table called Products_Backup containing all Products data.

select * into Products_Backup from Products

	-- Rename the Products table to Inventory.

	Exec sp_rename 'Products', 'Inventory';

	select * from inventory

	-- Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.
 
ALTER TABLE Inventory
DROP CONSTRAINT chk_Price_GreaterThanZero

Alter table inventory 
Alter column Price FLOAT

Alter table inventory
Add constraint chk_Price_GreaterThanZero CHECK (Price > 0)

	-- Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5

Create table Inventory_2 (
    [Product Code] int identity (1,1),
    [Product ID] int,
    [Product Name] varchar(100),
    Category varchar(50),
    Price numeric(10, 2),
    [Stock Quantity] int
);

select * from Inventory_2

