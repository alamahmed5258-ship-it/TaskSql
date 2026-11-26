USE CompanyDB;
GO

-- =============================================
-- Part 1

-- create a table Employees with columns: Id, FirstName, LastName, Salary.
CREATE TABLE dbo.Employees (
    Id         INT IDENTITY(1,1) NOT NULL,
    FirstName  VARCHAR(50)       NOT NULL,
    LastName   VARCHAR(50)       NOT NULL,
    Salary     DECIMAL(10,2)     NULL,
    CONSTRAINT PK_dbo_Employees PRIMARY KEY (Id)
);
GO

-- 1- Create a stored procedure named GetAllEmployees that selects all rows from Employees.
CREATE PROCEDURE dbo.GetAllEmployees
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, FirstName, LastName, Salary
    FROM dbo.Employees;
END;
GO

-- 2- Create a stored procedure GetHighSalaryEmployees with one input parameter @MinSalary which Select all employees with Salary > @MinSalary
CREATE PROCEDURE dbo.GetHighSalaryEmployees
    @MinSalary DECIMAL(10,2)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, FirstName, LastName, Salary
    FROM dbo.Employees
    WHERE Salary > @MinSalary;
END;
GO

-- 3- Create AddEmployee SP with @FirstName, @LastName, @Salary which Insert a new row into Employees.
CREATE PROCEDURE dbo.AddEmployee
    @FirstName VARCHAR(50),
    @LastName  VARCHAR(50),
    @Salary    DECIMAL(10,2)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.Employees (FirstName, LastName, Salary)
    VALUES (@FirstName, @LastName, @Salary);
END;
GO

-- =============================================
-- Part 2


-- Create a table EmployeeLog(Id, EmployeeId, Action, ActionDate).
CREATE TABLE dbo.EmployeeLog (
    Id          INT IDENTITY(1,1) NOT NULL,
    EmployeeId  INT               NOT NULL,
    Action      VARCHAR(50)       NOT NULL,
    ActionDate  DATETIME          NOT NULL DEFAULT GETDATE(),
    CONSTRAINT PK_EmployeeLog PRIMARY KEY (Id)
);
GO

-- create AFTER INSERT Trigger which Automatically log when a new employee is added.
CREATE TRIGGER dbo.trg_Employees_AfterInsert
ON dbo.Employees
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.EmployeeLog (EmployeeId, Action, ActionDate)
    SELECT i.Id, 'INSERT', GETDATE()
    FROM inserted i;
END;
GO

-- =============================================
-- Testing

EXEC dbo.AddEmployee @FirstName = 'Ahmed', @LastName = 'Ali',    @Salary = 45000;
EXEC dbo.AddEmployee @FirstName = 'Sara',  @LastName = 'Hassan', @Salary = 60000;
EXEC dbo.AddEmployee @FirstName = 'Omar',  @LastName = 'Samir',  @Salary = 75000;

EXEC dbo.GetAllEmployees;

EXEC dbo.GetHighSalaryEmployees @MinSalary = 50000;

SELECT * FROM dbo.EmployeeLog;