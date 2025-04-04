-- Easy
-- 1. Define the following terms: data, database, relational database, and table.
  -- Answer:
  -- Data means simple facts or information. Example: "Ali", "25", "Tashkent" – these are all data.
  -- A database is a place where we store and organize data. It helps us find and use data easily.
  -- A relational database stores data in tables. These tables can be connected (related) to each other.
  -- A table is like an Excel sheet. It has rows (horizontal) and columns (vertical). Each table stores information about one topic. Example: A "Students" table can have name, age, and group.

-- 2. List five key features of SQL Server.
  -- Answer:
  -- Keeps data safe. It protects data with passwords and permissions.
  -- Fast and powerful. It works well with large amounts of data.
  -- Data import and export. You can bring data from other systems or send it to other systems.
  -- Reports. You can create nice reports to show the data.
  -- Backup and Restore. You can save your data and bring it back if something goes wrong.

-- 3. What are the different authentication modes available when connecting to SQL Server? (Give at least 2)
  -- Answer:
  -- We have Windows Authenfication,SQL Server Authenfication and Microsoft Entra(several) 
  -- Windows Authentication. You log in with your Windows username and password. It is more secure and automatic.
  -- SQL Server Authentication. You log in with a special username and password created in SQL Server.

-- Medium
-- 4. Create a new database in SSMS named SchoolDB.
  -- Answer: 
CREATE DATABASE SchoolDB;

-- 5. Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).
  -- Answer:
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

-- 6. Describe the differences between SQL Server, SSMS, and SQL.
  -- Answer:
  -- SQL is a language used to work with databases. You use SQL to create, read, update, or delete data.
  -- SQL Server is a software made by Microsoft. It stores and manages your databases. It's like brain.
  -- SSMS (SQL Server Management Studio) is helps us. Write SQL queries. Create tables and databases. See your data in a friendly way.It's like a remote control or dashboard to manage SQL Server.
-- Hard
-- 7. Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.
  -- Answer:
  -- 
