--Stored Procedures For DepartmentTable--

--1.This stored procedure creates a department when the procedure AddDepartment procedure is called--

CREATE OR REPLACE PROCEDURE AddDepartment(departmentName VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Departments (DepartmentName)
    VALUES (departmentName);
END;
$$;


--2.This stored procedure updates a department when UpdateDepartment procedure is called--

CREATE OR REPLACE PROCEDURE UpdateDepartment(
    departmentId INT,
    departmentName VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Departments
    SET DepartmentName = departmentName
    WHERE DepartmentID = departmentId;
END;
$$;


--3.This stored procedure deletes a department when DeleteDepartment procedure is called--

CREATE OR REPLACE PROCEDURE DeleteDepartment(departmentId INT)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Departments
    WHERE DepartmentID = departmentId;
END;
$$;

------------------------------------------------------------------------------------------------------------

--Stored Procedures For EmployeeTable--

--1.This stored procedure creates an employee when AddEmployee procedure is called--

CREATE OR REPLACE PROCEDURE AddEmployee(
    employeeName VARCHAR,
    employeeAge INT,
    employeeLocation VARCHAR,
    employeeDateOfBirth DATE,
    departmentId INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Employees (EmployeeName, EmployeeAge, EmployeeLocation, EmployeeDateOfBirth, DepartmentId)
    VALUES (employeeName, employeeAge, employeeLocation, employeeDateOfBirth, departmentId);
END;
$$;


--2.This stored procedure updates an employee when UpdateEmployee procedure is called--

CREATE OR REPLACE PROCEDURE UpdateEmployee(
    employeeId INT,
    employeeName VARCHAR,
    employeeAge INT,
    employeeLocation VARCHAR,
    employeeDateOfBirth DATE,
    departmentId INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Employees
    SET EmployeeName = employeeName,
        EmployeeAge = employeeAge,
        EmployeeLocation = employeeLocation,
        EmployeeDateOfBirth = employeeDateOfBirth,
        DepartmentId = departmentId
    WHERE EmployeeId = employeeId;
END;
$$;


--3.This stored procedure deletes an employee when DeleteEmployee procedure is called--

CREATE OR REPLACE PROCEDURE DeleteEmployee(employeeId INT)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Employees
    WHERE EmployeeId = employeeId;
END;
$$;
