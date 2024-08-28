USE PFS11;

-- TIME


CREATE TABLE EMPTIMINGS(
	EMPID INT PRIMARY KEY,
    EMPNAME VARCHAR(30),
    LOGINTIME TIME 
);

INSERT INTO EMPTIMINGS VALUES (101,"SAI","12:10:10"),(102,"VARDHAN","15:10:10"),(103,"VENKAT","17:17:17");

SELECT * FROM EMPTIMINGS;

SELECT CURTIME();

-- ADDTIME()
SELECT ADDTIME("10:10:10","5:00:00");
SELECT EMPID,EMPNAME,ADDTIME(LOGINTIME,"5:00:00") AS LOGINTIME FROM EMPTIMINGS;

-- SUBTIME()
SELECT SUBTIME("15:10:10","5:00:00");
SELECT EMPID,EMPNAME,SUBTIME(LOGINTIME,"1:00:00") AS LOGINTIME FROM EMPTIMINGS;


-- TIME STAMP()

CREATE TABLE EMPTIMINGS1(
	EMPID INT PRIMARY KEY,
    EMPNAME VARCHAR(30) NOT NULL,
    LOGINTIME TIMESTAMP 
);

INSERT INTO EMPTIMINGS1 VALUES (101,"SAI","2021-08-24 12:12:12");

SELECT * FROM EMPTIMINGS1;

UPDATE EMPTIMINGS1 SET EMPNAME = "SAI VARDHAN" WHERE EMPID = 101;

SELECT * FROM EMPTIMINGS1;

CREATE TABLE EMPTIMINGS2(
	ID INT PRIMARY KEY,
    EMPNAME VARCHAR(30) NOT NULL,
    LOGINTIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);


INSERT INTO EMPTIMINGS2 VALUES (101,"SAI","2021-08-24 12:12:12");

SELECT * FROM EMPTIMINGS2;

INSERT INTO EMPTIMINGS2 (ID,EMPNAME) VALUES (102,"VARDHAN");

SELECT * FROM EMPTIMINGS2;

UPDATE EMPTIMINGS2 SET EMPNAME = "SAI VARDHAN" WHERE ID = 102;

SELECT * FROM EMPTIMINGS2;


CREATE TABLE EMPTIMINGS3(
	EMPID INT PRIMARY KEY,
    EMPNAME VARCHAR(30) NOT NULL,
    LOGINTIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO EMPTIMINGS3 VALUES (101,"SAI","2021-08-24 12:12:12");

INSERT INTO EMPTIMINGS3 (EMPID,EMPNAME) VALUES (102,"VARDHAN");

SELECT * FROM EMPTIMINGS3;

UPDATE EMPTIMINGS3 SET EMPNAME="SAI VARDHAN" WHERE EMPID=102;

SELECT * FROM EMPTIMINGS3;




