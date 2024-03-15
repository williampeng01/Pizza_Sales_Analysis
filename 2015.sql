USE Sales;

SELECT 
	order_details.order_details_id,
	order_details.order_id, 
    order_details.pizza_id,
	o_date AS date, o_time AS time,
	pizza_types_id, size,
	quantity, price, Revenue,
    #SUM(Revenue) OVER(PARTITION BY pizza_types_id ORDER BY order_id) AS window1,
    #SUM(Revenue) OVER(PARTITION BY pizza_types_id) AS window2,
    SUM(Revenue) OVER(PARTITION BY pizza_types_id ORDER BY MONTH(date)) AS monthly_cumulative_sales,
    SUM(Revenue) OVER(PARTITION BY MONTH(date) ORDER BY HOUR(time)) AS hour_cumulative_sales
FROM order_details
LEFT JOIN orders ON order_details.order_id = orders.order_id
LEFT JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id
LEFT JOIN rev ON order_details.order_details_id = rev.order_details_id
ORDER BY order_details.order_details_id ASC;


