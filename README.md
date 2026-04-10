# 📊 SalesSpectrum – Retail Sales Analysis using SQL

## 📌 Overview

**SalesSpectrum** is a SQL-based data analysis project designed to evaluate retail sales performance using structured data.
The dataset includes product details, monthly demand (January–December), pricing, and total sales value.

This project demonstrates how SQL can be used to transform raw data into actionable business insights, helping organizations make data-driven decisions.

---

## 🎯 Objectives

* Analyze product-level sales performance
* Identify top-performing and low-performing products
* Evaluate category-wise revenue contribution
* Understand the relationship between pricing and sales
* Analyze monthly demand trends and seasonality

---

## 🛠 Tools & Technologies

* MySQL Workbench
* SQL
* CSV Dataset

---

## 🗂 Database Structure

### Table: `sales_data`

| Column Name        | Description                        |
| ------------------ | ---------------------------------- |
| Item_ID            | Unique identifier for each product |
| Item_Name          | Name of the product                |
| Category           | Product category                   |
| Jan–Dec Demand     | Monthly demand values              |
| Total_Annual_Units | Total units sold annually          |
| Price_Per_Unit     | Price per unit                     |
| Total_Sales_Value  | Total revenue generated            |

---

## 📥 Data Import Process (CSV → MySQL)

### Step 1: Create Database

```sql
CREATE DATABASE SalesSpectrum;
USE SalesSpectrum;
```

### Step 2: Create Table

```sql
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
```

Step 3: Import CSV File (MySQL Workbench)

1. Navigate to **Schemas → SalesSpectrum → Tables**
2. Right-click on `sales_data`
3. Select **Table Data Import Wizard**
4. Choose your CSV file
5. Select **Use existing table**
6. Verify column mapping
7. Click **Next → Finish**

Step 4: Verify Data

```sql
SELECT * FROM sales_data;
SELECT COUNT(*) AS Total_Records FROM sales_data;
```

---

🔍 SQL Analysis Performed

* Identified **Top 5 revenue-generating products**
* Detected **Bottom 5 low-performing products**
* Calculated **category-wise total revenue**
* Analyzed **average price per category**
* Identified the **highest priced product** and evaluated its impact on sales
* Found **products with above-average sales performance**
* Analyzed **monthly demand trends (Jan–Dec)**

---

📊 Key Insights

* Revenue is concentrated among a few high-performing products
* High price does not always result in high sales performance
* Certain categories contribute significantly more to overall revenue
* Some products consistently perform above average
* Monthly demand analysis indicates variation and possible seasonality
* Low-performing products highlight opportunities for improvement

---

🚀 Future Scope

* Integrate SQL results with Power BI or Tableau dashboards
* Perform predictive analysis using Python and Machine Learning
* Incorporate real-time data updates
* Expand dataset with customer and regional insights
* Develop interactive business dashboards

---

📁 Project Files

* `dataset.csv` – Raw dataset
* `queries.sql` – SQL queries used for analysis
* `SalesSpectrum.pptx` – Project presentation

---

🙌 Conclusion

SalesSpectrum demonstrates the effective use of SQL in analyzing retail sales data and extracting meaningful insights.
The project highlights the importance of data-driven decision-making in understanding product performance, pricing strategy, and demand patterns.

---

⭐ If you found this project useful, consider giving it a star!
