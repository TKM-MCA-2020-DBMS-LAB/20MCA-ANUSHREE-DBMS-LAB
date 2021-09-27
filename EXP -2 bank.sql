create database bank;
use bank;
create table Customer
(cid int not null auto_increment,
cname varchar(50),
loc varchar(50),
sex varchar(20),
dob date,
primary key(cid));

create table Bank_brn
(bcode int not null,
bloc varchar(50),
bsate varchar(50),
primary key(bcode));

create table Deposit
(Dacno int not null,
dtype varchar(100),
ddate date,
damt int not null);

create table Loan
(Lacno int not null,
ltype varchar(100),
ldate date,
lamt int not null);

create table Accounts_in
(Bcode varchar(100),
cid int not null); 

create table Depositor
(cid int not null,
dacno int not null); 

create table Borrower
(cid int not null,
lacno int not null);
show tables;
desc customer;
desc bank_brn;
desc deposit;
desc loan;
desc accounts_in;
desc depositor;
desc borrower;

