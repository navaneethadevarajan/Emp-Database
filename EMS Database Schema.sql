--Query to create Department table--

CREATE TABLE IF NOT EXISTS Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(255) NOT NULL
);

--Query to create Employee table--

CREATE TABLE IF NOT EXISTS Employee (
    EmployeeId INT PRIMARY KEY,
    EmployeeName VARCHAR(255) NOT NULL,
    EmployeeAge INT NOT NULL,
    EmployeeLocation VARCHAR(255) NOT NULL,
    EmployeeDateOfBirth DATE NOT NULL,
    DepartmentId INT,
    DepartmentName VARCHAR(255) NOT NULL,
 --Foreign key constraint linking Employee to Department--
    CONSTRAINT FK_Employee_Department FOREIGN KEY (DepartmentId) REFERENCES Department(DepartmentID)
);

