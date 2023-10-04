-- create database
create database Library_System;

 

-- use database
use Library_System;

 

-- 1) Create the table Member, Books and 
-- Issue without any constraints as mentioned in the schema description above.
-- create table LS_Member
create table LS_Member(
	Member_id int(5),
    Member_NAme varchar(30),
    Member_address varchar(50),
    Acc_Open_Date date,
    Membership_type varchar(20),
    Fees_paid int(5),
    Max_Books_Allowed int(2),
    Penalty_Amount int(7)
    );

-- create table books
create table Books(
	Book_No int(6),
    Book_Name varchar(30),
    Author_Name varchar(30),
    Cost int(7),
    Category char(10)
);

 

-- create table Issue
create table Issue(
	Lib_Issue_Id int(10),
    Book_No int(6),
    Member_Id int(5),
    Issue_Date date,
    Return_Date date
);

 

-- 2) View the structure of the tables.
desc LS_MEmber;
desc Books;
desc Issue;

 

-- 3) Drop the Member table
drop table LS_Member;

 

-- 4) Create the table Member again as per the schema description with the following constraints.
create table Member(
-- a. Member_Id – Primary Key
	Member_id int(5) PRIMARY KEY,
-- 5) Modify the table Member increase the width of the member name to 30 characters
    Member_NAme varchar(30),
    Member_address varchar(50),
    Acc_Open_Date date,
    Membership_type varchar(20),
-- b. Membership_type - ‘Lifetime’,’ Annual’, ‘Half Yearly’,’ Quarterly’
    CONSTRAINT mt CHECK (Membership_type IN('Lifetime','Annual','Half Yearly','Quarterly')),
    Fees_paid int(5),
    Max_Books_Allowed int(2),
    Penalty_Amount int(7)
    );

-- 6) Add a column named as Reference of Char(30) to Issue table.
alter table Issue add Reference Char(30);

-- 7) Delete/Drop the column Reference from Issue.
alter table Issue drop column Reference;

-- 8) Rename the table Issue to Lib_Issue.
alter table Issue rename to Lib_Issue;

-- 9) Insert following data in table Member
insert into member values (1,'Richa Sharma','Pune','2005-12-10','Lifetime',25000,5,50),
						(2,'Garima Sen Sharma','Pune','2023-09-20','Lifetime',1000,3,null);
                        
-- 10) Insert at least 5 records with suitable data and save it.
insert into member values (3,'Yash Varma','Pune','2001-04-10','Lifetime',10000,5,100),
						(4,'Vipul Chaudhari','Pune','2023-08-23','Annual',15000,10,null),
                        (5,'Saiem Pathan','Pune','2001-04-22','Lifetime',100,6,100);

-- 11) Modify the column Member_name. Decrease the width of the member name to 20 characters.
alter table member add member_name_new