CREATE DATABASE Academy

USE Academy

CREATE TABLE Groups
(
	Id INT NOT NULL IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(10) NOT NULL UNIQUE,
	Rating INT NOT NULL,
	[Year] INT NOT NULL,
	CHECK((Rating >= 0 AND Rating <= 5) AND ([Year] >= 1 AND [Year] <= 5) AND ([Name] !=''))
)

SELECT * FROM Groups
INSERT Groups([Name], Rating, [Year]) VALUES('Hammet', '0','5')
DELETE Grops WHERE Id = 1


CREATE TABLE Departments
(
	Id INT NOT NULL IDENTITY PRIMARY KEY,
	Financing MONEY NOT NULL DEFAULT 0,
	[Name] NVARCHAR(10) NOT NULL UNIQUE,
	CHECK((Financing >= 0) AND ([Name] !=''))
)

SELECT * FROM Departments
INSERT Departments(Financing, [Name]) VALUES('55', 'QA')
DELETE Departments WHERE Id = 1


CREATE TABLE Faculties
(
	Id int NOT NULL IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL UNIQUE
)

SELECT * FROM Faculties
INSERT Faculties([Name]) VALUES('QA')
DELETE Faculties WHERE Id = 1


CREATE TABLE Teachers
(
	Id INT NOT NULL IDENTITY PRIMARY KEY,
	EmploymentDate date NOT NULL,
	[Name] NVARCHAR(MAX) NOT NULL,
	Premium MONEY NOT NULL DEFAULT 0,
	Salary MONEY NOT NULL,
	Surname NVARCHAR(MAX) NOT NULL,
	CHECK((EmploymentDate >= '1990-01-01') AND ([Name] !='') AND (Surname !='') AND  (Premium > 0) AND (Salary >= 0))
)

SELECT * FROM Teachers
INSERT Teachers(EmploymentDate, [Name], Premium, Salary, Surname) VALUES('1991-01-01', 'Vasyl', '45', '1001', 'Zherebiatiev')
DELETE Teachers WHERE Id = 1