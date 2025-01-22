--Department--

--1.AddDepartment--

CREATE OR REPLACE PROCEDURE AddDepartment(departmentName VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Departments (DepartmentName)
    VALUES (departmentName);
END;
$$;


--2.UpdateDepartment--

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


--3.DeleteDepartment--

CREATE OR REPLACE PROCEDURE DeleteDepartment(departmentId INT)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Departments
    WHERE DepartmentID = departmentId;
END;
$$;

------------------------------------------------------------------------------------------------------------

--Employee--

--1.AddEmployee--

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


--2.UpdateEmployee--

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


--3.DeleteEmployee--

CREATE OR REPLACE PROCEDURE DeleteEmployee(employeeId INT)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM Employees
    WHERE EmployeeId = employeeId;
END;
$$;
