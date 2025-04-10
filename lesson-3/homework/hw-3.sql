
--1. Define and explain the purpose of BULK INSERT in SQL Server.

/* Answer: BULK INSERT is a SQL command that helps you quickly 
add a large amount of data into a table from a file (like .csv, .txt).
Purpose: Import data from a file into a table.
have a file called students.csv with this data:
1, John, 20
2, Alice, 22
3, Bob, 19*/

Create table students 
	(id int, name varchar(50), age int);

Bulk insert students
from 'C:\desktop\students.csv'
with (Fieldterminator = ',', 
    Rowterminator = '\n');
	 
-- 2. List four file formats that can be imported into SQL Server.
/* Answer: .txt, .xls, .csv, .xml*/
 
-- 3. Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2))

create table Products (ProductID int primary key, ProductName varchar(50), Price decimal(10,2));

-- 4. Insert three records into the Products table using INSERT INTO.

insert into Products (ProductID, ProductName, Price)
values
(1, 'Nok', 12000),
(2, 'Olma', 10000),
(3, 'Anjir', 18000);

select * from Products

-- 5. Explain the difference between NULL and NOT NULL with examples.

/* Answer: NULL means no value or unknown value. If a column has a NULL value,
it means that there is no data for that field or the value is not known.
NOT NULL is a constraint that makes sure a column cannot have a NULL value.
In other words, every record must have a value for that column. For example Null below */

Create table Stuff (PersonID int primary key, Name varchar(50), DateOfBirth date);
insert into Stuff (PersonID, Name, DateOfBirth)
values (1, 'Abbos', '1998-11-14'),
       (2, 'Madina', NULL); 

Create table Stuff2 (PersonID int, Name varchar(50) not null, DateOfBirth date);
insert into Stuff2 (PersonID, Name, DateOfBirth)
values (1, 'Abbos', '1998-11-14'),
       (2, Null, '1999-01-15'); /*This will cause an error because Name cannot be NULL*/

-- 6. Add a UNIQUE constraint to the ProductName column in the Products table.

Alter table Products
Add constraint UQ_ProductName unique (ProductName);


-- 7. Write a comment in a SQL query explaining its purpose.

-- Answer: We use to write comments for a single line.
/* And We use to write comments
that span multiple lines*/

--8. Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.

Create table Categories (CategoryID int primary key, CategoryName varchar(20) unique);

--9. Explain the purpose of the IDENTITY column in SQL Server.

/*Answer.The IDENTITY column in SQL Server is used to automatically 
generate unique numbers for each new row in a table, typically used for primary keys.*/

--10. Use BULK INSERT to import data from a text file into the Products table.

/* Answer: create .txt file like products.txt then
ProductID,ProductName,Amount
1,Olma,100
2,Banan,30
3,Anjir,200
*/

create table Products (
    ProductID int,
    ProductName varchar(50),
    Amount int);

bulk insert Products
from 'C:\Pc\products.txt'
with (Fieldterminator = ',',
    Rowterminator = '\n',
    Firstrow = 2);

-- 11. Create a FOREIGN KEY in the Products table that references the Categories table.

create table Categories (ID int primary key, CategoryName varchar(30));

create table Products (ProductID int primary key, ProductName varchar(30), Price decimal(10,2) not null, CategoryID int not null, constraint FK_Products_Categories foreign key (CategoryID) references Categories (ID));

-- 12. Explain the differences between PRIMARY KEY and UNIQUE KEY with examples.

/* Answer: Primary key: Only one allowed per table, cannot accept NULL values,
Unique key: You can have multiple unique keys in a table, can accept NULL values (but only one NULL).
*/

-- 13. Add a CHECK constraint to the Products table ensuring Price > 0.

Alter table Products
Add constraint CHK_Price Check (Price > 0);

-- 14. Modify the Products table to add a column Stock (INT, NOT NULL).

Alter table Products
Add Stock int not null;

-- 15. Use the ISNULL function to replace NULL values in a column with a default value.

Update Products 
set Stock = ISNULL(Stock, 1)

-- 16. Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.

-- Answer: FOREIGN KEY constraints are used to maintain relationships between tables and ensure data integrity.

-- 17. Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.

Create table Customers (CustomerID int Primary key,
    CustomerName varchar(40), Age int,
    constraint CK_Age check (Age >= 18));

-- 18. Create a table with an IDENTITY column starting at 100 and incrementing by 10.

create table [Identity] (Id int identity (100, 10), Name varchar(30));

-- 19. Write a query to create a composite PRIMARY KEY in a new table OrderDetails.

create table OrderDetails (ID int,
    ProductID int,
    Amount int,
    Price decimal(10, 2),
    constraint PK_OrderDetails primary key (ID, ProductID)
);

-- 20. Explain with examples the use of COALESCE and ISNULL functions for handling NULL values.

/* Answer: COALESCE: Useful when you want to check multiple values and return the first non-NULL value.
ISNULL: Useful when you want to check one value and replace it with a default value if it's NULL.
*/

Select EmployeeID, Coalesce (MiddleName, FirstName) as name 
from Employees;

Select EmployeeID, isnull (MiddleName, 'No Middle Name') as MiddleName
from Employees;

--21. Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.

create table Employees (Empid int primary key,
    name varchar(50),
    email varchar(100) unique);

--22. Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.

create table customers (Customerid int primary key,
    Empid int,
    Orderdate date,
    Constraint fk_customers_employees foreign key (empid) references employees (empid) on delete cascade on update cascade);

--Done


