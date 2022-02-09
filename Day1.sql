

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


USE [PRACTICE];
GO
--Aliases

/*******************************************************************************
********************** The aliases on the columns    ***************************
********************************************************************************/
USE FORMATION
GO

--Deepening in the Transact-SQL will be done on the "Contact" table. 
--

--We create a table named "Contact" 


create table Contact ([Name] varchar (200),firstname varchar (200), 
age int, gender char (1), date_of_birth date)

GO

insert into contact values 

('Jackson','Mickael',18,'F','1976-08-04'),
('Taylor','Liz',16,'F','1978-08-02'),
('Grace','Kelly',17,'F','1987-05-02'),
('Eastwood','Clint',23,'M','1970-05-06'),
('Willis','Bruce',22,'M','1983-08-02'),
('Dicaprio','Leonardo',22,'M','1983-08-02'),-- same age as Bruce Willis
('Pitt','Brad',37,'M','1975-08-02'),
('Clooney','George',22,'M','1983-01-01'),
('Monroe','Marylin',48,'M','1960-06-12'),
('Roberts','Julia',47,'F','1968-06-12'),
('Jolie','Angelina',28,'M','1972-07-24'),
('Thuillier','olivier',41,'M','1976-08-12'),
('Chuillier','olivier',41,'M','1976-08-12'),
('Stone','Sharon',34,'F','1983-05-08'),
('Willis','Bruce',22,'M','1983-08-02')-- twice the same value in the table, it's a duplicate

-- SELECT ?

SELECT * FROM Contact 

-- If I want to rename the name of my column Name by Nickname? 

select [name] as Nickname from contact

-- What if I want to rename the names of all the columns? 

select [name] as Nickname, firstname as Superman, age as Spiderman,gender as Batman, 
date_of_birth as Hulk from contact

-- You can see that all the columns have been renamed :)

Select [name ] as [First Name] from Contact  where [Name] like '%o'; 

SELECT * FROM Contact
GO

SELECT * FROM Contact
WHERE AGE LIKE '2%';