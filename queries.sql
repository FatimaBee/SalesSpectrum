-- =========================================
-- SalesSpectrum: Retail Sales SQL Project
-- =========================================

-- 🔷 Database Setup
CREATE DATABASE SalesSpectrum;
USE SalesSpectrum;

-- 🔷 Table Creation
CREATE TABLE sales_data (
    Item_ID VARCHAR(20),
    Item_Name VARCHAR(100),
    Category VARCHAR(50),

    Jan_Demand INT,
    Feb_Demand INT,
    Mar_Demand INT,
    Apr_Demand INT,
    May_Demand INT,
    Jun_Demand INT,
    Jul_Demand INT,
    Aug_Demand INT,
    Sep_Demand INT,
    Oct_Demand INT,
    Nov_Demand INT,
    Dec_Demand INT,

    Total_Annual_Units INT,
    Price_Per_Unit INT,
    Total_Sales_Value BIGINT
);

-- 🔷 Basic Data Checks
SELECT * FROM sales_data;
SELECT COUNT(*) AS Total_Records FROM sales_data;

-- =========================================
-- 🔍 ANALYSIS QUERIES
-- =========================================

-- Top 5 Revenue Generating Products
SELECT Item_Name, Total_Sales_Value
FROM sales_data
ORDER BY Total_Sales_Value DESC
LIMIT 5;

-- Bottom 5 Products (Low Performance)
SELECT Item_Name, Total_Sales_Value
FROM sales_data
ORDER BY Total_Sales_Value ASC
LIMIT 5;

-- Category-wise Revenue
SELECT Category, SUM(Total_Sales_Value) AS Revenue
FROM sales_data
GROUP BY Category
ORDER BY Revenue DESC;

-- Average Price per Category
SELECT Category, AVG(Price_Per_Unit) AS Avg_Price
FROM sales_data
GROUP BY Category;

-- Highest Priced Product
SELECT Item_Name, Price_Per_Unit
FROM sales_data
ORDER BY Price_Per_Unit DESC
LIMIT 1;

-- Products with Above Average Sales
SELECT Item_Name, Total_Sales_Value
FROM sales_data
WHERE Total_Sales_Value > (
    SELECT AVG(Total_Sales_Value) FROM sales_data
);

-- Create View for Category Summary
CREATE VIEW category_summary AS
SELECT Category, SUM(Total_Sales_Value) AS Revenue
FROM sales_data
GROUP BY Category;

SELECT * FROM category_summary;
