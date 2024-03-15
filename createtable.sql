USE Sales;

DROP TABLE IF EXISTS order_details;
CREATE TABLE IF NOT EXISTS order_details(
	order_details_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    pizza_id VARCHAR(25) NOT NULL,
    quantity INT
);

DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders(
	order_id INT PRIMARY KEY,
    o_date DATE,
    o_time TIME
);

DROP TABLE IF EXISTS pizza_types;
CREATE TABLE IF NOT EXISTS pizza_types(
	pizza_types_id VARCHAR(25) PRIMARY KEY,
    p_name VARCHAR(50),
    category VARCHAR(15),
    ingredients LONGTEXT
);

DROP TABLE IF EXISTS pizzas;
CREATE TABLE IF NOT EXISTS pizzas(
	pizza_id VARCHAR(25) PRIMARY KEY,
    pizza_types_id VARCHAR(25) NOT NULL,
    size VARCHAR(3) NOT NULL,
    price DECIMAL(6,3)
);


#LOAD DATA LOCAL INFILE '/Users/williampeng/Desktop/salesproject/Amazon_Sale_Report1.csv'
#INTO TABLE Amazon_sales
#FIELDS TERMINATED BY ','
#ENCLOSED BY '"'
#LINES TERMINATED BY '\n'
#IGNORE 1 ROWS;

