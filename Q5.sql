create database Student_info;
use Student_info;

CREATE TABLE Student(
studentID INT NOT NULL AUTO_INCREMENT,
FName VARCHAR(20),
LName VARCHAR(20),
Address VARCHAR(30),
City VARCHAR(15),
Marks INT,
PRIMARY KEY(studentID)
);

CREATE TRIGGER calculate
before INSERT 
ON student
FOR EACH ROW
SET new.marks = new.marks+100;

create table Final_mark(per int );

CREATE TRIGGER total_mark
after insert 
ON student
FOR EACH ROW
insert into Final_mark values(new.marks);

mysql> use Student_info;
Database changed
mysql> show tables;
+------------------------+
| Tables_in_student_info |
+------------------------+
| final_mark             |
| student                |
+------------------------+
2 rows in set (0.03 sec)

mysql> create trigger calculate
    -> before insert
    -> on student
    -> for each row
    -> set new.marks = new.marks+100;

mysql> show triggers;
+------------+--------+---------+------------------------------------------+--------+------------------------+--------------------------------------------+----------------+----------------------+----------------------+--------------------+
| Trigger    | Event  | Table   | Statement                                | Timing | Created                | sql_mode                                   | Definer        | character_set_client | collation_connection | Database Collation |
+------------+--------+---------+------------------------------------------+--------+------------------------+--------------------------------------------+----------------+----------------------+----------------------+--------------------+
| calculate  | INSERT | student | SET new.marks = new.marks+100            | BEFORE | 2021-06-13 22:58:44.53 | STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION | root@localhost | utf8mb4              | utf8mb4_0900_ai_ci   | utf8mb4_0900_ai_ci |
| total_mark | INSERT | student | insert into Final_mark values(new.marks) | AFTER  | 2021-06-13 22:59:56.37 | STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION | root@localhost | utf8mb4              | utf8mb4_0900_ai_ci   | utf8mb4_0900_ai_ci |
+------------+--------+---------+------------------------------------------+--------+------------------------+--------------------------------------------+----------------+----------------------+----------------------+--------------------+
2 rows in set (0.01 sec)