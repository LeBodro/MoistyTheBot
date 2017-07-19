DROP DATABASE IF EXISTS DISCORD;
CREATE DATABASE DISCORD;
USE DISCORD;

CREATE TABLE KNOWLEDGE
(
QUESTION NVARCHAR(150) NOT NULL,
ANSWER NVARCHAR(100) NOT NULL,
PRIMARY KEY (QUESTION),
TEACHER_ID INT(5)
/*FOREIGN KEY (TEACHER_ID) REFERENCES TEACHER(TEACHER_ID)*/
);

CREATE TABLE TEACHER
(
TEACHER_ID INT(5) NOT NULL AUTO_INCREMENT,
NAME NVARCHAR (100) NOT NULL,
BAN BOOLEAN NOT NULL,
PRIMARY KEY (TEACHER_ID)
);

CREATE TABLE DICTIONARY
(
WORD_ID INT(5) NOT NULL AUTO_INCREMENT,
WORD NVARCHAR(35) NOT NULL,
MEANNING CHAR(15) NOT NULL,
PRIMARY KEY (WORD_ID)
);

CREATE TABLE SYNONYMLIST
(
WORD_ID INT(5) NOT NULL,
PRIMARY KEY (WORD_ID)
/*FOREIGN KEY (SYNONYM_WORD) REFERENCES DICTIONARY(WORD_ID)*/
);

CREATE TABLE CLIENT
(
CLIENT_ID CHAR(40) NOT NULL,
INFO CHAR(150),
SUBSCRIPTION DATE NOT NULL
);
