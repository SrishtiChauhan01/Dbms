REM   Script: Experiment 1
REM   .

CREATE TABLE employee_01 (Emp_no INT, 
    Emp_name VARCHAR(30), 
    Job VARCHAR(28), 
    Manager INT, 
    Salary INT);

Insert into Employee_01 values(101,'Anika','HR',201,50000);

Insert into Employee_01 values(102,'Geet','Engineer',202,60000);

Insert into Employee_01 values(103,'Dimple','Accountant',203,45000);

Insert into Employee_01 values(104,'Tanvi','Admin',204,55000);

Insert into Employee_01 values(105,'Sonu','Manager',205,65000);

UPDATE Employee_01 
set Job='Trading' where Emp_no=103;

ALTER table Employee_01 
RENAME column Manager To MAnager_no;

