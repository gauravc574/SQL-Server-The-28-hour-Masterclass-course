

create database practice;
use practice;

ALTER DATABASE PRACTICE MODIFY NAME = PRACTICE_NEW;
ALTER DATABASE PRACTICE_NEW MODIFY NAME = PRACTICE;


CREATE DATABASE PRACTICE_NEW;
DROP DATABASE PRACTICE_NEW;




--Exercise No 1
CREATE DATABASE Exercise;
ALTER DATABASE Exercise MODIFY NAME = Exercise2; 
DROP DATABASE Exercise2;





--Creating table

--Syntax : CREATE TABLE <Table Name> (<Column name> <Type of column>)
USE [PRACTICE];


CREATE TABLE Employee(EmpNo int);
sp_rename 'Employee','Employee2'
sp_rename 'Employee2','Employee'


DROP TABLE Employee;


CREATE TABLE Simple_Table(column_1 nvarchar(10), column_2 nvarchar(10));

SP_RENAME 'simple_table','Simple_table1'

DROP TABLE Simple_Table1


--insert data into database 


--Syntax :- insert into <Table name> values (<values>,<values>)
--INTO is not mandatory

USE [PRACTICE];

CREATE TABLE Student( StudentId int, StudentName varchar(25));


INSERT  Student values (1,'Gaurav');
INSERT INTO Student values 
(2,'Suraj'),
(3,'Himanshu'),
(4,'Kiran');

  
SELECT StudentName, StudentId
FROM Student
WHERE StudentName='GAURAV';


--Update data

-- Syntax : UPDATE <Table name> SET <Column Name> = <Updated value> Where <Condition>

SELECT * from Student;
UPDATE Student SET StudentName= 'SHANTANU' WHERE StudentId=1;

DROP TABLE Student

--We can use [] to use column name with space
--If we want to use terms reserved by SQL we can use [] for them as well


--DELETE data from table

--Syntax - DELETE FROM <Table name> WHERE <condition>
--If no condition is provided with delete then it will behave as truncate 

DELETE FROM Student WHERE STUDENTID=4;


--Updating 2 columns

UPDATE Student SET StudentName='Priya',StudentId=4 WHERE StudentId=3;


--Excercise 
USE [PRACTICE]

CREATE TABLE StudentInfo([Name] varchar(200), FirstName char(10), Age int);

INSERT INTO StudentInfo VALUES
('Gaurav Chawre', 'Gaurav', 22),
('Priyanka Khanna','Priyanka',23),
('Shantanu Hirwatkar','Shantanu',25)


Select * from StudentInfo where FirstName='Gaurav';
UPDATE StudentInfo set Age = 24 wHERE FirstName='Gaurav'