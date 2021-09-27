create database College;
use College;
create table Student
(
sid integer primary key,
sname varchar(30),
sex varchar(30),
dob date,
dno varchar(30)
);
create table Department
(
dno varchar(30),
dname varchar(50)
);
create table Faculty
(
f_id integer not null,
fname varchar(30),
designation varchar(30),
salary int not null,
dno varchar(30)
);
create table Course
(
cid integer not null,
cname varchar(30),
credits int not null,
dno varchar(30)
);
create table Register
(
sid integer not null,
cid integer not null,
sem varchar(30)
);
create table Teaching
(
f_id integer not null,
cid integer not null,
sem varchar(30)
);
create table Hostel
(
hid integer not null,
hname varchar(30),
seats integer not null
);

show tables;
insert into Student values(1,"Anushree","female","1999-05-17",101);
insert into Student values(2,"Shaan","male","1998-09-29",102);
insert into Student values(3,"Sheena","female","1999-03-28",103);
insert into Student values(4,"Abhi","male","1998-05-10",104);
insert into Student values(5,"Aishwarya","female","1999-08-02",105);
desc Student;
select * from Student;

insert into Department values(101,"Electronics");
insert into Department values(102,"Computer Science");
insert into Department values(103,"English");
insert into Department values(104,"Chemistry");
insert into Department values(105,"Physics");
desc department;
select * from department;

insert into Faculty values(200,"John","Staff",30000,101);
insert into Faculty values(201,"Sam","Asst Prof",35000,102);
insert into Faculty values(202,"Daisy","Asst Prof",35000,103);
insert into Faculty values(203,"James","Librarian",25000,104);
insert into Faculty values(204,"Lily","Principal",70000,105);
desc faculty;
select * from faculty;

insert into Course values(1000,"Electronics",6,101);
insert into Course values(1001,"Computer",5,102);
insert into Course values(1002,"English",4,103);
insert into Course values(1003,"Chemistry",5,104);
insert into Course values(1000,"Physics",3,105);
desc course;
select * from course;

insert into Register values(111,1,"2nd");
insert into Register values(222,2,"3rd");
insert into Register values(222,3,"1st");
insert into Register values(222,4,"4th");
insert into Register values(222,5,"5th");
desc register;
select * from register;

insert into Teaching values(400,1,6001);
insert into Teaching values(401,2,6002);
insert into Teaching values(402,3,6003);
insert into Teaching values(403,4,6004);
insert into Teaching values(404,5,6005);
desc teaching;
select * from teaching;

insert into Hostel values(500,"Modern",6001);
insert into Hostel values(501,"Arts",6002);
insert into Hostel values(502,"Trust",6003);
insert into Hostel values(503,"Taiba",6004);
insert into Hostel values(504,"Ideal",6005);
desc hostel;
select * from hostel;
alter table student add column grade varchar(20) not null;







