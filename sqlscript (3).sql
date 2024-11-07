REM   Script: Experiment 4
REM   ..

Create table Employee_01( 
    Emp_id Int Primary Key, 
    Emp_name varchar2(100), 
    Emp_age INT, 
    Emp_salary Decimal(10,2));

Insert into Employee_01 values(1,'John',25,50000);

Insert into Employee_01 values(2,'Jane',30,60000);

Insert into Employee_01 values(3,'Alice',28,45000);

Insert into Employee_01 values(4,'Bob',32,70000);

Insert into Employee_01 values(5,'Charlie',27,55000);

Insert into Employee_01 values(6,'David',31,65000);

Insert into Employee_01 values(7,'Emily',29,52000);

select*from Employee_01;

SELECT COUNT(*) FROM employee_01;

SELECT MAX (Emp_age) FROM employee_01;

SELECT MIN(emp_salary) FROM employee_01;

SELECT SUM(emp_age) FROM employee_01;

SELECT AVG(emp_salary) FROM employee_01;

SELECT emp_salary FROM employee_01 ORDER BY emp_salary ASC;

SELECT emp_salary FROM employee_01 ORDER BY emp_salary DESC;

SELECT Emp_name, Emp_salary 
FROM Employee_01 
WHERE Emp_age < 29 AND Emp_salary < 10000;

