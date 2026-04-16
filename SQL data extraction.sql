-- Create Database
CREATE DATABASE Superstore_data;

-- Create Tables
DROP TABLE IF EXISTS Sales;
CREATE TABLE Sales (
    Row_ID VARCHAR(50),
	Order_ID VARCHAR (50),
	Order_Date DATE,
	Ship_Date DATE,
	Ship_Mode VARCHAR(50),
	Customer_ID VARCHAR(50) ,
	Customer_Name VARCHAR(100),
	Segment VARCHAR(50),
	Country VARCHAR(50),
	City VARCHAR(50),
	State VARCHAR(50),
	Postal_Code VARCHAR(50),
	Region VARCHAR(50),
	Product_ID VARCHAR(50),
	Category VARCHAR(50),
	Sub_Category VARCHAR(50),
	Product_Name VARCHAR(200),
	Sales DECIMAL(10,2),
	Quantity DECIMAL(10,2),
	Discount DECIMAL(10,2),
	Profit DECIMAL(10,2)

);

SELECT * FROM Sales;

-- Total sales by region
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region;

-- Top 5 profitable products
SELECT category, SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC
LIMIT 5;
-- monthly sales trends
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

-- highest discount impact
 SELECT discount, AVG(profit)
 FROM sales
 GROUP BY discount;

 


