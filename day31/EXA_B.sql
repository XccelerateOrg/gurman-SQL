stock=# create table stock (
stock(# id serial primary key,
stock(# fruit_name char (255) not null,
stock(# description TEXT (255),
stock(# QOS numeric(6),
stock(# price numeric(8,2)
stock(# );
ERROR:  type modifier is not allowed for type "text"
LINE 4: description TEXT (255),
                    ^
stock=# create table stock (                                                    id serial primary key,                                                          fruit_name char (255) not null,                                                 description text,
stock(# QOS numeric(6),
stock(# price numeric(8,2)
stock(# );
CREATE TABLE
stock=# \list
                                         List of databases
       Name       |      Owner       | Encoding |   Collate   |    Ctype    |   Access privileges   
------------------+------------------+----------+-------------+-------------+-----------------------
 gurmanramusandhu | gurmanramusandhu | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
 postgres         | postgres         | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
 stock            | gurmanramusandhu | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
 template0        | postgres         | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
                  |                  |          |             |             | postgres=CTc/postgres
 template1        | postgres         | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
                  |                  |          |             |             | postgres=CTc/postgres
 testing19        | gurmanramusandhu | UTF8     | en_US.UTF-8 | en_US.UTF-8 | 
(6 rows)

*********************************************************************
*************************************

stock=# DROP TABLE stock;
DROP TABLE