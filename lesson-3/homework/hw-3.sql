
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


