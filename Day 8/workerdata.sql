CREATE DATABASE if not exists test;

USE test;

CREATE TABLE Worker (
	WORKER_ID NUMBER(4) NOT NULL PRIMARY KEY ,
	FIRST_NAME VARCHAR2(25),
	LAST_NAME VARCHAR2(25),
	SALARY NUMBER(15),
	JOINING_DATE DATE,
	DEPARTMENT VARCHAR2(25)
);

INSERT INTO Worker
VALUES (001, 'Monika', 'Arora', 100000, '14-Feb-20', 'HR');
INSERT INTO Worker
VALUES (002, 'Niharika', 'Verma', 80000, '14-Jun-11', 'Admin');
INSERT INTO Worker
VALUES (003, 'Vishal', 'Singhal', 300000, '14-Feb-20', 'HR');
INSERT INTO Worker
VALUES (004, 'Amitabh', 'Singh', 500000, '14-Feb-20', 'Admin');
INSERT INTO Worker
VALUES (005, 'Vivek', 'Bhati', 500000, '14-Jun-11', 'Admin');
INSERT INTO Worker
VALUES (006, 'Vipul', 'Diwan', 200000, '14-Jun-11', 'Account');
INSERT INTO Worker
VALUES (007, 'Satish', 'Kumar', 75000, '14-Jan-20', 'Account');
INSERT INTO Worker
VALUES (008, 'Geetika', 'Chauhan', 90000, '14-April-11', 'Admin');

CREATE TABLE Bonus (
	WORKER_REF_ID number,
	BONUS_AMOUNT NUMBER(10),
	BONUS_DATE DATE,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
values (001, 5000, '16-Feb-20');
INSERT INTO Bonus 
values (002, 3000, '16-Jun-11');
INSERT INTO Bonus 
values (003, 4000, '16-Feb-20');
INSERT INTO Bonus 
values (001, 4500, '16-Feb-20');
INSERT INTO Bonus 
values (002, 3500, '16-Jun-11');


CREATE TABLE Title (
	WORKER_REF_ID NUMBER,
	WORKER_TITLE VARCHAR2(25),
	AFFECTED_FROM DATE,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
VALUES (001, 'Manager', '20-Feb-2016');
INSERT INTO Title 
VALUES (002, 'Executive', '11-Jun-2016');
INSERT INTO Title 
VALUES (008, 'Executive', '11-Jun-2016');
INSERT INTO Title 
VALUES(005, 'Manager', '11-Jun-2016');
INSERT INTO Title 
VALUES(004, 'Asst. Manager', '11-Jun-2016');
INSERT INTO Title 
VALUES (007, 'Executive', '11-Jun-2016');
INSERT INTO Title 
VALUES(006, 'Lead', '11-Jun-2016');
INSERT INTO Title 
VALUES(003, 'Lead', '11-Jun-2016');