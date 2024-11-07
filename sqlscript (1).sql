REM   Script: Experiment 2
REM   ..

Create table Department_01(   
    Dept_no varchar2(10),   
    Dept_name varchar2(20),   
    Dloc varchar2(20));

insert into Department_01 values('S1','Finance','Chicago');

insert into Department_01 values('S2','HR','Switzerland');

insert into Department_01 values('S3','Marketing','Australia');

insert into Department_01 values('S4','Accounting','New Zealand');

ALTER table Department_01  
ADD Designation varchar2(20);

UPDATE Department_01 
SET Designation='Accountant' 
Where Dept_no ='S4';

UPDATE Department_01 
SET Designation=NULL;

