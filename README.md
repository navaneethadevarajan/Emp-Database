# Employee Management System Database
This project contains the database schema and stored procedures for the Employee Management System using PostgreSQL version 8.

The Employee Management System (EMS) Database provides the necessary database structure and stored procedures to manage employee information.

It includes the table schema for storing employee data and various stored procedures to perform CRUD (Create, Read, Update, Delete) operations.

## Project Structure

The repository contains the following files:

EMS Database Schema.sql: Contains the SQL script for the table schema used in the Employee Management System.

EMS StoredProcedure Script.sql: Contains the SQL scripts for the stored procedures used in the Employee Management System.

## EMS Database Schema
The EMS Database Schema.sql file defines the structure of the tables used in the Employee Management System. It includes the following tables:

Employees: Stores employee details such as EmployeeID, EmployeeName, EmployeeDOB, EmployeeLocation, DepartmentName and DepartmentID.

Departments: Stores department details such as DepartmentID and DepartmentName.

Department Table:

<img width="500" alt="image" src="https://github.com/user-attachments/assets/966ef42d-7971-4b08-9a0c-9f0203f96692" />

Employee Table:

<img width="500" alt="image" src="https://github.com/user-attachments/assets/c4c8621e-b0ee-41f6-a804-634721ba4ba4" />

## EMS StoredProcedure Script
The EMS StoredProcedure Script.sql file contains the stored procedures used to perform various operations on the employee and department data.

It includes procedures for:

AddEmployee: Adds a new employee to the Employees table.

UpdateEmployee: Updates an existing employee's details.

DeleteEmployee: Deletes an employee from the Employees table by their EmployeeID.

GetEmployeeById: Retrieves an employee's details by their EmployeeID.

GetAllEmployees: Retrieves a list of all employees.

AddDepartment: Adds a new department to the deprtment's table.

UpdateDepartment: Updates an existing department in the department table.

DeleteDepartment: Deletes a department from the department table.

GetAllDepartment:  Displays all the departments list in the department table.

## Setting Up the Database
To set up the database, follow these steps:

Create the Database: Create a new database for the Employee Management System in PostgreSQL.

Run the Table Schema Script: Execute the TableSchema.sql script to create the necessary tables.

Run the Stored Procedures Script: Execute the StoredProcedures.sql script to create the stored procedures.

For reference-https://www.w3schools.com/postgresql/postgresql_pgadmin4.php

## Additional Resources
For more information on PostgreSQL and database management, visit the PostgreSQL Documentation.

https://www.postgresql.org/docs/
