-- Top Customers

SELECT c.customer_name,
       SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- Monthly Revenue

SELECT DATE_FORMAT(order_date,'%Y-%m') AS month,
       SUM(total_amount) AS revenue
FROM orders
GROUP BY month;