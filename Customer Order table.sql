REM   Script: Assignment 4 Customer Order
REM   ..

Create table Customer02(    
    CustId varchar2(20) Primary Key,    
    Last_Name varchar2(40),    
    First_Name varchar2(50)    
);

Insert into Customer02   
values(001,'Malhotra','Aman');

Insert into Customer02   
values(002,'Pal','Pooja');

Insert into Customer02   
values(003,'Singh','Keerti');

Insert into Customer02   
values(004,'Rawat','Neha');

Insert into Customer02   
values(005,'Thakur','Mehak');

CREATE TABLE ORDERS01( 
    Order_ID NUMBER(10) PRIMARY KEY, 
    Order_Date DATE, 
    Customer_SID NUMBER(10), 
    Amount NUMBER(10) CHECK (Amount > 20000) 
);

INSERT INTO ORDERS01(Order_ID, Order_Date, Customer_SID, Amount) 
VALUES(101, TO_DATE('2023-11-09', 'YYYY-MM-DD'), 1, 25000);

INSERT INTO ORDERS01(Order_ID, Order_Date, Customer_SID, Amount) 
VALUES(102, TO_DATE('2023-11-10', 'YYYY-MM-DD'), 2, 22000);

INSERT INTO ORDERS01(Order_ID, Order_Date, Customer_SID, Amount) 
VALUES(103, TO_DATE('2023-11-11', 'YYYY-MM-DD'), 3, 28000);

INSERT INTO ORDERS01(Order_ID, Order_Date, Customer_SID, Amount) 
VALUES(104, TO_DATE('2023-11-12', 'YYYY-MM-DD'), 4, 21000);

INSERT INTO ORDERS01(Order_ID, Order_Date, Customer_SID, Amount) 
VALUES(105, TO_DATE('2023-11-13', 'YYYY-MM-DD'), 5, 30000);

SELECT CustID, Last_Name, First_Name 
FROM CUSTOMER02 
WHERE Last_Name LIKE '%s';

SELECT * FROM ORDERS01 
WHERE Amount BETWEEN 21000 AND 30000;

SELECT Order_ID, Amount + 500 AS "new amount" 
FROM ORDERS01;

SELECT Order_ID, Amount 
FROM ORDERS01;

SELECT SUM(Amount) AS Total_Amount 
FROM ORDERS01 
WHERE Amount > 15000;

