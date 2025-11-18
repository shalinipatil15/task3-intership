create database ecommerce;
use ecommerce;
show tables;
select * from sales_data;
-- select where, order by, group by
-- Select all customers from the “West” region.
SELECT * 
FROM sales_data
WHERE region = 'West';

-- Display the top 5 highest sales amounts.
SELECT *
FROM Sales_data
ORDER BY sales_amount DESC
LIMIT 5;
-- Find total sales for each region.
SELECT region, SUM(sales_amount) AS total_sales
FROM Sales_data
GROUP BY region;
-- aggregrate functions 
SELECT region, COUNT(*) AS total_customers
FROM sales_data
GROUP BY region;
SELECT AVG(sales_amount) AS avg_sales
FROM Sales_data;
SELECT SUM(sales_amount) AS total_sales
FROM Sales_data;

-- subqueries 
SELECT *
FROM Sales_data
WHERE sales_amount > (SELECT AVG(sales_amount) FROM Sales_data);
SELECT *
FROM Sales_data
WHERE sales_amount = (SELECT MAX(sales_amount) FROM Sales_data);
