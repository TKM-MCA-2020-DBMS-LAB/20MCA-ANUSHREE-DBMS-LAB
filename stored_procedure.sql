mysql> DELIMITER //
mysql> CREATE PROCEDURE Getdetails()
    -> BEGIN
    -> select * from employee;
    -> END//
Query OK, 0 rows affected (0.01 sec)
