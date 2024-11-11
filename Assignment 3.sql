REM   Script: event
REM   event question

CREATE TABLE Status ( 
    Status_code VARCHAR2(15) PRIMARY KEY, 
    Name CHAR(20) 
);

CREATE TABLE Ready_Reason ( 
    Reason_code VARCHAR2(15) PRIMARY KEY, 
    Name CHAR(20) 
);

CREATE TABLE Delay_Reason ( 
    Reason_code VARCHAR2(15) PRIMARY KEY, 
    Name CHAR(20) 
);

CREATE TABLE Event ( 
    Event_id VARCHAR2(6) PRIMARY KEY, 
    Duration NUMBER(20), 
    Status_code VARCHAR2(6), 
    Reason_code VARCHAR2(15), 
    CONSTRAINT fk_status FOREIGN KEY (Status_code) REFERENCES Status(Status_code), 
    CONSTRAINT fk_reason FOREIGN KEY (Reason_code) REFERENCES Ready_Reason(Reason_code) 
);

INSERT INTO Status (Status_code, Name) VALUES ('ST1', 'Pending');

INSERT INTO Status (Status_code, Name) VALUES ('ST2', 'Active');

INSERT INTO Ready_Reason (Reason_code, Name) VALUES ('RR1', 'Completed');

INSERT INTO Ready_Reason (Reason_code, Name) VALUES ('RR2', 'In Progress');

INSERT INTO Delay_Reason (Reason_code, Name) VALUES ('DR1', 'Weather');

INSERT INTO Delay_Reason (Reason_code, Name) VALUES ('DR2', 'Technical Issue');

drop table event;

drop table Status ;

drop table Ready_Reason  ;

drop table Delay_Reason   ;

CREATE TABLE Status ( 
    Status_code VARCHAR2(6) PRIMARY KEY, 
    Name CHAR(20) 
);

CREATE TABLE Ready_Reason ( 
    Reason_code VARCHAR2(15) PRIMARY KEY, 
    Name CHAR(20) 
);

CREATE TABLE Delay_Reason ( 
    Reason_code VARCHAR2(15) PRIMARY KEY, 
    Name CHAR(20) 
);

select* from status;

CREATE TABLE Event ( 
    Event_id VARCHAR2(6) PRIMARY KEY, 
    Duration NUMBER(20), 
    Status_code VARCHAR2(6), 
    Reason_code VARCHAR2(15), 
    CONSTRAINT fk_status FOREIGN KEY (Status_code) REFERENCES Status(Status_code), 
    CONSTRAINT fk_reason FOREIGN KEY (Reason_code) REFERENCES Ready_Reason(Reason_code) 
);

INSERT INTO Status (Status_code, Name) VALUES ('S1', 'Active');

INSERT INTO Status (Status_code, Name) VALUES ('S2', 'Inactive');

INSERT INTO Ready_Reason (Reason_code, Name) VALUES ('R1', 'Ready to Start');

INSERT INTO Ready_Reason (Reason_code, Name) VALUES ('R2', 'Awaiting Approval');

INSERT INTO Delay_Reason (Reason_code, Name) VALUES ('D2', 'Technical Issue');

INSERT INTO Event (Event_id, Duration, Status_code, Reason_code) VALUES ('E001', 30, 'S1', 'R1');

INSERT INTO Event (Event_id, Duration, Status_code, Reason_code) VALUES ('E003', 60, 'S1', 'R2');

SELECT  
    E.Event_id, 
    E.Duration, 
    S.Name AS Status_Name 
FROM  
    Event E 
INNER JOIN  
    Status S ON E.Status_code = S.Status_code;

SELECT Reason_code, Name  
FROM Ready_Reason 
UNION 
SELECT Reason_code, Name  
FROM Delay_Reason;

SELECT  
    E.Event_id, 
    E.Duration, 
    R.Name AS Ready_Reason_Name, 
    D.Name AS Delay_Reason_Name 
FROM  
    Event E 
LEFT JOIN  
    Ready_Reason R ON E.Reason_code = R.Reason_code 
LEFT JOIN  
    Delay_Reason D ON E.Reason_code = D.Reason_code;

select *from event;

select *from event;

select *from event;

