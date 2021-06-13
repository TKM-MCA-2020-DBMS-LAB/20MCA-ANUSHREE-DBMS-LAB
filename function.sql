mysql> use organization;
Database changed
mysql> show tables;
+------------------------+
| Tables_in_organization |
+------------------------+
| department             |
| deptsal                |
| employee               |
| manager                |
+------------------------+
4 rows in set (0.06 sec)

mysql> describe employee;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| Emp_no       | int           | NO   | PRI | NULL    |       |
| Emp_name     | varchar(20)   | NO   |     | NULL    |       |
| DOB          | date          | NO   |     | NULL    |       |
| Address      | varchar(30)   | YES  |     | NULL    |       |
| Date_of_Join | date          | YES  |     | NULL    |       |
| Mobile_no    | decimal(10,0) | YES  |     | NULL    |       |
| Dept_no      | int           | YES  | MUL | NULL    |       |
| Salary       | float         | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
8 rows in set (0.02 sec)

mysql> select * from employee;
+--------+----------+------------+-----------+--------------+------------+---------+--------+
| Emp_no | Emp_name | DOB        | Address   | Date_of_Join | Mobile_no  | Dept_no | Salary |
+--------+----------+------------+-----------+--------------+------------+---------+--------+
|      1 | Triveni  | 1999-04-12 | Kozhikode | 2020-05-06   | 9633019940 |       3 |  33000 |
+--------+----------+------------+-----------+--------------+------------+---------+--------+
1 row in set (0.07 sec)

mysql> delimiter //
mysql> create function Emp_count(emp_no int) returns integer
    -> reads sql data
    -> deterministic
    -> begin
    -> declare emp_count int;
    -> select count(*) into emp_count
    -> from employee
    -> where employee.Emp_no = emp_no;
    -> return emp_count;
    -> end
    -> //
Query OK, 0 rows affected (0.09 sec)

mysql> select Emp_count(1);
    -> //
+--------------+
| Emp_count(1) |
+--------------+
|            1 |
+--------------+
1 row in set (0.01 sec)