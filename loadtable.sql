SET GLOBAL local_infile=1;
USE Sales;


LOAD DATA LOCAL INFILE '/Users/williampeng/Desktop/salesproject/pizza/order_details.csv'
REPLACE
INTO TABLE order_details
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/williampeng/Desktop/salesproject/pizza/orders.csv'
REPLACE
INTO TABLE orders
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/williampeng/Desktop/salesproject/pizza/pizzas.csv'
REPLACE
INTO TABLE pizzas
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/williampeng/Desktop/salesproject/pizza/pizza_types2.csv'
REPLACE
INTO TABLE pizza_types
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


