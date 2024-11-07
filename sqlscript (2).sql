REM   Script: Experiment 3
REM   ..

Create table Customer_01( 
    Cust_id Int Primary Key, 
    Cust_name varchar2(50) Not Null, 
    Cust_email varchar2(40) Not Null, 
    Cust_phone varchar2(20) Not Null, 
    Cust_address varchar2(100));

Insert into Customer_01 values(1,'Sneha','Sneha@gmail.com','1234567891','New York');

Insert into Customer_01 values(2,'Pooja','Pooja@gmail.com','2345678921','Switzerland');

Insert into Customer_01 values(3,'Kartik','Kartik@gmail.com','4567890213','Belgium');

Insert into Customer_01 values(4,'Harsh','Harsh@gmail.com','3456789012','Italy');

Insert into Customer_01 values(5,'Priyanka','Priyanka@gmail.com','5678901234','Germany');

Select*from Customer_01;

