create database ineuron

show databases
use ineuron

create table CUST_DETAILS (
cust_name varchar(25), 
cust_id int,
gender varchar(1),
geography varchar(10),
churn int
)

select * from CUST_DETAILS where cust_id > 3


INSERT INTO CUST_DETAILS VALUES ("Satyajit", 1, "M", "Odisha", 0);
INSERT INTO CUST_DETAILS VALUES ("Ravi", 1, "M", "MP", 0);
INSERT INTO CUST_DETAILS VALUES ("Kishan", 5, "F", "UP", 1);
INSERT INTO CUST_DETAILS VALUES ("Satya", 1, "M", "Pune", 0);
INSERT INTO CUST_DETAILS VALUES ("Hema", 5, "F", "Karnatka", 1);

create table CUST_DETAILS_PK (
cust_name varchar(25),
cust_id int NOT NULL,
gender varchar(1),
geography varchar(10), 
churn int,
primary key (cust_id)
)

select * from CUST_DETAILS_PK

INSERT INTO CUST_DETAILS_PK VALUES ("Satyajit", 1, "M", "Odisha", 0);
INSERT INTO CUST_DETAILS_PK VALUES ("Ravi", 2, "M", "MP", 0);
INSERT INTO CUST_DETAILS_PK VALUES ("Kishan", 3, "F", "UP", 1);
INSERT INTO CUST_DETAILS_PK VALUES ("Satya", 5, "M", "Pune", 0);
INSERT INTO CUST_DETAILS_PK VALUES ("Hema", 5, "F", "Karnatka", 1);

create table dep (
depid int not null,
depname varchar(100),
depaddress varchar(225),
primary key (depid))

create table emp (
empid int NOT NULL ,
empname varchar(100),
empadd varchar(225),
depid int, 
PRIMARY KEY (empid),
FOREIGN KEY (depid) REFERENCES dep(depid))

select * from dep 

select * from emp

INSERT INTO dep VALUES (1, "CSE", "something");
INSERT INTO dep VALUES (2, "EEE", "something");
INSERT INTO dep VALUES (3, "MECH", "something");
INSERT INTO dep VALUES (4, "CIVIL", "something");

INSERT INTO emp VALUES (92701, "satyajit", "something", 1)
INSERT INTO emp VALUES (92702, "hema", "something", 11)


INSERT INTO CUST_DETAILS VALUES ("Saty", 6, "M", "Odisha", 0);
INSERT INTO CUST_DETAILS VALUES ("Rav", 7, "M", "MP", 0);
INSERT INTO CUST_DETAILS VALUES ("Kian", 8, "F", "UP", 1);
INSERT INTO CUST_DETAILS VALUES ("Saya", 9, "M", "Pune", 0);
INSERT INTO CUST_DETAILS VALUES ("Hem", 5, "F", "Karnatka", 1);
INSERT INTO CUST_DETAILS VALUES ("Amna", 7, "F", "Karnatk", 1);
#Where claus

select * from CUST_DETAILS where cust_id > 3 and gender = 'F'

#Like pattern matching
Extracting name starting with S
select * from CUST_DETAILS where cust_name like "S%"

Extracting name that has i in between
select * from CUST_DETAILS where cust_name like "%i%"
 
 Extracting name that has name ending with a particular letter 
select * from CUST_DETAILS where cust_name like "%n" 


Q-Write a command to fetch all the customers whose name starts with S & end ends with a
select * from CUST_DETAILS where cust_name like "S%a"

Q- Write a command to fetch all the customers who ae Male and stays in U
select * from CUST_DETAILS where gender = "F" and geography = "UP"


create table empinfo
(
firstname varchar(10),
lastname varchar(10),
id int,
age int,
city varchar(20),
state varchar(20),
PRIMARY KEY (id));


INSERT into empinfo values("John", 'Jones', 19960,45,"Payson", "Arizona");
INSERT into empinfo values("Mary", 'Jones', 29982,25,"Payson", "Arizona");
INSERT into empinfo values("Eric", 'Edwards', 39987,65,"Payson", "Arizona");
INSERT into empinfo values("Howell", 'Ginger', 49900,50,"Payson", "Arizona");
INSERT into empinfo values("Gus", 'Gray', 59997,25,"Payson", "Arizona");
INSERT into empinfo values("MaryAnn", 'May', 69988,95,"Payson", "Arizona");
INSERT into empinfo values("Leroy", 'Brown', 79986,85,"Payson", "Arizona");

select firstname, lastname, age from empinfo where age>30

select firstname as FN, lastname as LN, age as a from empinfo where age>30

select firstname as FN, lastname as LN, age as a from empinfo emp where emp.age>30

select * from empinfo where firstname like 'J%' 

select COUNT(*) from empinfo

select COUNT(*) from empinfo where age < 80

select COUNT(*) as count_records from empinfo where age < 80


select * from CUST_DETAILS

ALTER TABLE CUST_DETAILS
DROP COLUMN churn;

ALTER TABLE CUST_DETAILS
ADD COLUMN AGE int;

update CUST_DETAILS set AGE = 35 WHERE gender = 'M';
update CUST_DETAILS set AGE = 30 WHERE gender = 'F';


Importing:Upload data to the database 
Exporting: Export data from the database

#Importing 

use ineuron
show tables

drop table student

#Importing using cmd for big files
1. Creating a new database --> IMDB

create database imdb

use imdb

show tables
select * from Person

CREATE table m_cast(
index_1 varchar(1),
mid varchar(255),
pid varchar(255),
id varchar(1))

select * from m_cast

#Aggregate functions

use ineuron
select * from cust_details

select gender, count(*) from cust_details
group by gender 

select max(cust_id) from cust_details
 
 select gender, count(*) from cust_details
group by gender order by gender asc

 select gender, count(*) from cust_details
group by gender order by gender desc

select gender, geography, count(*) from cust_details
group by gender,geography order by geography asc limit 3

#Having clause

select gender, geography, count(cust_id) from cust_details
group by gender,geography having count(cust_id) 

select *
from tablename
where 
group by
having
order by
limit




select count(*) from cust_details where gender "M" having geography 'Odisha'