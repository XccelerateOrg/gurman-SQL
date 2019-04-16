postgres=# SELECT first_name, last_name FROM employee  WHERE salary < 11000 AND salary > 5000;
 first_name | last_name 
------------+-----------
 steven     | king
 neena      | kochhar
(2 rows)

*****************************************************************************


postgres=# SELECT * FROM employee WHERE contract_length < 2;
 id | first_name | last_name | salary | contract_length 
----+------------+-----------+--------+-----------------
  4 | nancy      | greenberg |   3000 |               1
(1 row)

******************************************************************************

postgres=# INSERT INTO employee (first_name,last_name,salary,contract_length) VALUES ('gurman','sandhu',100000,5 );
INSERT 0 1
postgres=# INSERT INTO employee (first_name,last_name,salary,contract_length) VALUES ('sam','gellman',200000,5 );
INSERT 0 1
postgres=# selct * from employee
postgres-# 
postgres=# SELECT * FROM employee;
 id | first_name | last_name | salary | contract_length 
----+------------+-----------+--------+-----------------
  1 | steven     | king      |  10000 |               3
  2 | neena      | kochhar   |   8000 |               2
  3 | David      | Austin    |  12000 |               2
  4 | nancy      | greenberg |   3000 |               1
  5 | gurman     | sandhu    | 100000 |               5
  6 | sam        | gellman   | 200000 |               5
(6 rows)


******************************************************************************

postgres=# update employee SET salary='8000',contract_length ='2' where salary ='3000'AND contract_length ='1';
UPDATE 1
postgres=# SELECT * FROM employee;
 id | first_name | last_name | salary | contract_length 
----+------------+-----------+--------+-----------------
  1 | steven     | king      |  10000 |               3
  2 | neena      | kochhar   |   8000 |               2
  3 | David      | Austin    |  12000 |               2
  5 | gurman     | sandhu    | 100000 |               5
  6 | sam        | gellman   | 200000 |               5
  4 | nancy      | greenberg |   8000 |               2
(6 rows)
******************************************************************************

postgres=# SELECT * FROM employee ORDER BY salary DESc;
 id | first_name | last_name | salary | contract_length 
----+------------+-----------+--------+-----------------
  6 | sam        | gellman   | 200000 |               5
  5 | gurman     | sandhu    | 100000 |               5
  3 | David      | Austin    |  12000 |               2
  1 | steven     | king      |  10000 |               3
  2 | neena      | kochhar   |   8000 |               2
  4 | nancy      | greenberg |   8000 |               2
(6 rows)


