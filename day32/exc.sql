fruits=# select * from stocks;
 id | quantity | price | citrus_id 
----+----------+-------+-----------
  3 |       10 | 35.00 |         3
  2 |       70 | 15.00 |         2
  4 |       10 | 20.00 |         4
  1 |       43 | 25.00 |         1
(4 rows)

fruits=# begin transaction
fruits-# ;
BEGIN
fruits=# UPDATE stocks SET quantity = quantity + 20 FROM citrus WHERE stocks.citrus_id = citrus.id AND name = 'lemon';
UPDATE 1
fruits=# UPDATE stocks SET quantity = quantity + 40 FROM citrus WHERE stocks.citrus_id = citrus.id AND name = 'orange';
UPDATE 1
fruits=# UPDATE stocks SET quantity = quantity - 20 FROM citrus WHERE stocks.citrus_id = citrus.id AND name = 'orange';
UPDATE 1
fruits=# UPDATE stocks SET quantity = quantity + 40 FROM citrus WHERE stocks.citrus_id = citrus.id AND name = 'lime';
UPDATE 1
fruits=# UPDATE stocks SET quantity = quantity - 30 FROM citrus WHERE stocks.citrus_id = citrus.id AND name = 'lemon';
UPDATE 1
fruits=# UPDATE stocks SET quantity = quantity - 20 FROM citrus WHERE stocks.citrus_id = citrus.id AND name = 'lime';
UPDATE 1
fruits=# UPDATE stocks SET quantity = quantity + 40 FROM citrus WHERE stocks.citrus_id = citrus.id AND name = 'grapefruit';
UPDATE 1
fruits=# UPDATE stocks SET quantity = quantity - 20 FROM citrus WHERE stocks.citrus_id = citrus.id AND name = 'grapefruit';
UPDATE 1
fruits=# commit;
COMMIT
fruits=# rollback;
WARNING:  there is no transaction in progress
ROLLBACK
fruits=# select * from stocks;
 id | quantity | price | citrus_id 
----+----------+-------+-----------
  2 |       90 | 15.00 |         2
  1 |       33 | 25.00 |         1
  4 |       30 | 20.00 |         4
  3 |       30 | 35.00 |         3
(4 rows)
