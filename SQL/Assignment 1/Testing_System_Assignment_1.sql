CREATE DATABASE EducationSystemManagement;
use EducationSystemManagement;

CREATE TABLE Department (
    Department_ID INT,
    Department_Name VARCHAR(255)
);

CREATE TABLE Position (
Position_ID INT,
Position_Name VARCHAR(150)
);

CREATE TABLE `Account` (
Account_ID INT,
Email VARCHAR(100),
Username VARCHAR(100),
FullName VARCHAR(255),
Department_ID VARCHAR(255),
Position_ID  VARCHAR(255),
Create_Date DATE
);

CREATE TABLE `Group`(
Group_ID INT,
Group_Name VARCHAR(50),
Creator_ID INT,
Create_Date DATE
);

CREATE TABLE GroupAccount (
Group_ID INT,
Account_ID INT,
Join_Date DATE
);

CREATE TABLE TypeQuestion (
Type_ID INT,
TypeName VARCHAR(30)
);

CREATE TABLE CategoryQuestion (
CategoryID INT,
CategoryName VARCHAR(30)
);

CREATE TABLE Question (
Question_ID INT,
Content VARCHAR(300),
Category_ID INT,
Type_ID INT,
Creator_ID INT,
Create_Date DATE
);

CREATE TABLE Answer (
Answer_ID INT,
Content VARCHAR(200),
Question_ID INT,
is_Correct VARCHAR (10)
);

CREATE TABLE Exam (
Exam_ID INT,
Test_Code INT,
Title VARCHAR(50),
Category_ID_Duration INT,
Creator_ID INT,
Create_Date DATE
);

CREATE TABLE Exam_Question (
Exam_ID INT,
Question_ID INT
);

DROP TABLE IF EXISTS  `Account`