create database day1;
use day1;
create table employee(empid int,name varchar(10));
select employee;
desc student;
insert into employee values (456,'XYZ'),(789,'ABC');
select * from employee;
insert into student values (1,'Saiem','70'),(2,'Xyz',80);


create table shirts (name varchar(30),size enum('xsmall','small','medium','large'));
insert into books values(101,'ABC','Denis Ritchie',450,'System');
insert into shirts values('corcs','large');
insert into shirts values('JP','medium');

select * from books;
insert into books values(102,'Oracle','Loni',550,'Database');
select * from books where cost>=500 and cost<=700;
SELECT * FROM books WHERE book_name LIKE 'O%';
select * from books where cost < (select avg(cost)from books);
create table books1 as (select * from books);
select * from books1;
create table copyofbooks as(select * from books);
create table db as (select * from books where Category = 'Database');
select * from books where cost = (select max(cost) from books);
select * from books where cost = (select min(cost) from books);
select Author_name from books where Book_name in (select Book_name from books group by Author_name having count(distinct Author_name)>1 )order by Book_name;
update books set cost=cost+150 where Book_name = 'ABC';
SET SQL_SAFE_UPDATES = 0;
select book_name,cost from books where Category = 'Database' or Category = 'System';
select * from books where cost < 500;
