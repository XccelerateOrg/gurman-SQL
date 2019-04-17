**************EXERCISE-A**********************


fruits=# select citrus.name,citrus.color,stocks.quantity FROM citrus INNER JOIN stocks ON citrus.id= stocks.id WHERE color = 'orange';


    name    | color  | quantity 
------------+--------+----------
 grapefruit | orange |       10
 orange     | orange |       70
(2 rows)

*************EXERCISE-B************************************************B***

fruits=# select *  FROM citrus full outer join stocks ON citrus.id= stocks.citrus_id ;
 id |    name    | color  | taste  | id | quantity | price | citrus_id 
----+------------+--------+--------+----+----------+-------+-----------
  1 | lemon      | yellow | sour   |  1 |       33 | 25.00 |         1
  3 | grapefruit | orange | bitter |  3 |       10 | 35.00 |         3
  2 | orange     | orange | juicy  |  2 |       70 | 15.00 |         2
  4 | lime       | green  | sour   |  4 |       10 | 20.00 |         4
  5 | tangerline | yellow | sweet  |    |          |       |          
(5 rows)

fruits=# select *  FROM citrus inner join stocks ON citrus.id= stocks.citrus_id ;
 id |    name    | color  | taste  | id | quantity | price | citrus_id 
----+------------+--------+--------+----+----------+-------+-----------
  1 | lemon      | yellow | sour   |  1 |       33 | 25.00 |         1
  3 | grapefruit | orange | bitter |  3 |       10 | 35.00 |         3
  2 | orange     | orange | juicy  |  2 |       70 | 15.00 |         2
  4 | lime       | green  | sour   |  4 |       10 | 20.00 |         4
(4 rows)
