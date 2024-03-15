USE Sales;

SELECT 
	order_details.order_details_id, 
	quantity * price AS Revenue
FROM order_details
LEFT JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id
ORDER BY order_details.order_id ASC;

DROP TABLE IF EXISTS rev;
CREATE TABLE IF NOT EXISTS rev(
	order_details_id INT PRIMARY KEY,
    Revenue DECIMAL(6,3)
);

LOAD DATA LOCAL INFILE '/Users/williampeng/Desktop/salesproject/pizza/revenue.csv'
REPLACE
INTO TABLE rev
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

