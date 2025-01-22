--Departments table--

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(255) NOT NULL
);

--Employees table--

CREATE TABLE Employees (
    EmployeeId INT PRIMARY KEY,
    EmployeeName VARCHAR(255) NOT NULL,
    EmployeeAge INT NOT NULL,
    EmployeeLocation VARCHAR(255) NOT NULL,
    EmployeeDateOfBirth DATE NOT NULL,
    DepartmentId INT,
    DepartmentName VARCHAR(255) NOT NULL,
 --Foreign key constraint linking Employee to Department--
    CONSTRAINT FK_Employee_Department FOREIGN KEY (DepartmentId) REFERENCES Departments(DepartmentID)
);