create database university;
 use university;
 create table students (s_id INT(10) NOT NULL AUTO_INCREMENT, s_firstname VARCHAR(30) NOT NULL,
 s_lastname VARCHAR(30) NOT NULL, s_email VARCHAR(40), PRIMARY KEY (s_id));

 insert into students (s_firstname,s_lastname,s_email) values ('Shankar', 'Bhat', 'shankar@example.com');
 insert into students (s_firstname,s_lastname,s_email) values ('Venkat', 'Rao', 'venkat@example.com');
 insert into students (s_firstname,s_lastname,s_email) values ('Mohan', 'Nair', 'mohan@example.com');
 insert into students (s_firstname,s_lastname,s_email) values ('Abhijeet', 'Patel', 'abhi@example.com');
 select * from students;
 select * from students where s_id='3';
 create table student (s_firstname VARCHAR(30) NOT NULL, s_lastname VARCHAR(30) NOT NULL, 
 s_email VARCHAR(40), s_phone BIGINT(10) NOT NULL, PRIMARY KEY (s_phone, s_firstname));

 insert into student (s_firstname,s_lastname,s_email,s_phone) values ('Shankar', 'Bhat', 'shankar@example.com', '7303075409');
 insert into student (s_firstname,s_lastname,s_email,s_phone) values ('Venkat', 'Rao', 'venkat@example.com', '7404076894');
 insert into student (s_firstname,s_lastname,s_email,s_phone) values ('Mohan', 'Nair', 'mohan@example.com', '7404076892');
 insert into student (s_firstname,s_lastname,s_email,s_phone) values ('Abhijeet', 'Patel', 'abhi@example.com', '7404076991');
 insert into student (s_firstname,s_lastname,s_email,s_phone) values ('Manoj', 'Nair', 'manoj@example.com', '7404076892');
 select * from student;
 select * from student where s_firstname='Mohan' AND s_phone='7404076892';
 insert into student (s_firstname,s_lastname,s_email,s_phone) values ('Manoj', 'Pillai', 'manoj@example.com', '7404076892');

 19] ALTER TABLE students ADD PRIMARY KEY (s_id);
20]  ALTER TABLE students ADD CONSTRAINT pk_students PRIMARY KEY (s_phone,s_firstname);

 select * from students;
 create table courses (c_id INT(10) NOT NULL AUTO_INCREMENT, c_name VARCHAR(30) NOT NULL, PRIMARY KEY (c_id));
 insert into courses (c_name) values ('Computer Science');
 insert into courses (c_name) values ('Economics');
 insert into courses (c_name) values ('Arts');
 insert into courses (c_name) values ('Chemistry');
 insert into courses (c_name) values ('Astro Physics');
 select * from courses;
 create table enrollment (e_id INT(10) NOT NULL AUTO_INCREMENT, e_StudentID integer, e_CourseID integer, 
 e_year YEAR, PRIMARY KEY (e_id), FOREIGN KEY (e_StudentID) REFERENCES students(s_id), FOREIGN KEY (e_CourseID) REFERENCES courses(c_id));
 insert into enrollment (e_StudentID, e_CourseID, e_year) values (1, 3, 2016);
 insert into enrollment (e_StudentID, e_CourseID, e_year) values (2, 4, 2016);
 insert into enrollment (e_StudentID, e_CourseID, e_year) values (3, 2, 2016);
 insert into enrollment (e_StudentID, e_CourseID, e_year) values (4, 1, 2016);
'error' insert into enrollment (e_StudentID, e_CourseID, e_year) values (5, 1, 2016);
 select * from enrollment;
 alter table enrollment add foreign key (e_StudentID) references students(s_id); 
 alter table enrollment drop constraint fore;






-- Day2 Task
create table employee(emp_id int primary key, emp_name varchar(40), emp_salary int(7));
create table dept (dept_id int primary key, dept_name varchar(30));
create table org (emp_id int,dept_id int,foreign key(emp_id) references employee(emp_id),foreign key(dept_id) references dept(dept_id));
desc org;
select * from org;