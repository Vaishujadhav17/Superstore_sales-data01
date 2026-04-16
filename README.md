[Cleaned_data.xlsx](https://github.com/user-attachments/files/26794522/Cleaned_data.xlsx)
# 📊 Sales Data Analysis Project

## 📌 Project Overview

This project focuses on analyzing sales data using:

* Microsoft Excel
* SQL
* Tableau

The goal is to extract insights such as sales trends, profit analysis, regional performance, and customer segmentation.

---

## 🛠️ Tools & Technologies

* Excel (Data Cleaning & Preprocessing)
* SQL (Data Querying & Analysis)
* Tableau (Data Visualization & Dashboard)

---

## 📂 Project Files & Links

### 📑 Excel Dataset

🔗 

[Cleaned_data.xlsx](https://github.com/user-attachments/files/26794531/Cleaned_data.xlsx)


---

### 🗄️ SQL Queries

🔗-- Create Database
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

 

)

---

### 📊 Tableau Dashboard

🔗 <img width="1911" height="1071" alt="Screenshot 2026-04-16 224123" src="https://github.com/user-attachments/assets/eeb69c99-f76a-4441-978b-fe0bb23c0b74" />




---

## 📊 Key Analysis Performed

* 📈 Sales Trend Analysis (Time-based)
* 📊 Category & Sub-Category Performance
* 🌍 Regional & State-wise Sales Analysis
* 💸 Profit vs Sales Relationship
* 🎯 Customer Segment Analysis
* 📉 Discount Impact on Profit

---

## 📌 Key Insights

* Identified top-performing categories and regions
* Found loss-making sub-categories
* Observed impact of discounts on profit
* Compared customer segments for sales contribution

---

## 🎯 Conclusion

This project demonstrates how raw data can be transformed into meaningful insights using data analysis tools and visualization techniques.

---

## 👤 Vaishnavi Jadhav[SQL data extraction.sql](https://github.com/user-attachments/files/26794322/SQL.data.extraction.sql)


**Your Name**
(Data Analyst Intern)

---
# Superstore_sales-data01
