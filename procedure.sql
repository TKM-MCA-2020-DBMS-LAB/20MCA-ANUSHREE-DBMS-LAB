mysql> create table deptsal as select dept_no , 0 as totalsalary from department;
Query OK, 3 rows affected (0.09 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from deptsal;

+---------+-------------+
| dept_no | totalsalary |
+---------+-------------+
|       1 |           0 |
|       2 |           0 |
|       3 |           0 |
|       4 |           0 |
+---------+-------------+
4 rows in set (0.00 sec)

mysql> delimiter //
mysql>  create procedure updatesal(IN Param1 int)
    -> begin
    -> update deptsal
    -> set totalsalary= (select sum(salary)from employee  where dept_no=Param1)
    -> where dept_no =param1;
    -> end; //
Query OK, 0 rows affected (0.03 sec)
mysql> delimiter ;
mysql> call updatesal(1);
Query OK, 1 row affected (0.01 sec)

