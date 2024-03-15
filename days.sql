USE Sales;

SELECT order_details.order_id, 
order_details.pizza_id, 
quantity, o_date, price,
quantity * price AS Revenue
FROM order_details
LEFT JOIN orders ON order_details.order_id = orders.order_id
LEFT JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id
ORDER BY order_details.order_id ASC;


