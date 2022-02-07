

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