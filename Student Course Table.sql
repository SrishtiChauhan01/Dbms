REM   Script: Assignment 1 Student Course table
REM   .

Create table Student_3(   
    StudentId number(4)Primary key,   
    Studentname varchar2(40)Not Null,   
    Address1 varchar2(300),   
    Gender varchar2(15),   
    Course varchar2(8), 
    Deptno Number(2));

Insert into Student_3  
    values('101','Pooja Pal','Uttar Pradesh','Female','MCA',1);

Insert into Student_3  
    values('102','Sneha','Faridabad','Female','BCA',2);

Insert into Student_3  
    values('103','Aman','Noida','Male','BCA',3);

Insert into Student_3  
    values('104','Dhruv','New Delhi','Male','Bcom',4);

Insert into Student_3  
    values('105','Sonakshi','Uttarakhand','Female','BA',5);

Create table Course_3 (  
    DeptNo number(10)Primary Key,   
    Dname varchar2(40),   
    Location  varchar2(50));

Insert into Course_3  
    values('1','Masters of Computer Application','Faridabad');

Insert into Course_3  
    values('2','Bachelor of Computer Application','Ghaziabad');

Insert into Course_3  
    values('3','Bachelor of Computer Application','New Delhi');

Insert into Course_3  
    values('4','Bachelor of Commerce','Uttar Pradesh');

Insert into Course_3  
    values('5','Bachelor of Arts','Faridabad');

select* from course_3;

SELECT StudentId, Course from Student_3;

SELECT Dname, Location FROM Course_3;

SELECT * FROM Student_3 WHERE Course = 'MCA';

SELECT Studentname  
FROM Student_3  
WHERE Studentid IN (101, 102, 105);

SELECT Studentname  
FROM Student_3  
WHERE Deptno NOT IN (1, 4);

SELECT Studentname  
FROM Student_3  
WHERE Studentname LIKE 'S%';

SELECT Studentname  
FROM Student_3 
WHERE Studentname LIKE '_k%';

SELECT Studentname  
FROM Student_3 
WHERE Studentname LIKE '_o%';

SELECT Studentname  
FROM Student_3 
WHERE Deptno IS NULL;

SELECT * FROM Student_3  
ORDER BY Course ASC;

SELECT COUNT(*)FROM Student_3 
WHERE Course = 'BCA';

SELECT COUNT(*)FROM Student_3;

SELECT COUNT(*)FROM Student_3  
WHERE Course = 'BCA';

SELECT COUNT(*)FROM Student_3;

SELECT * FROM Student_3  
WHERE Deptno IN (3, 5);

SELECT * FROM Student_3  
ORDER BY Course ASC;

SELECT * FROM Student_3  
ORDER BY Studentname ASC;

