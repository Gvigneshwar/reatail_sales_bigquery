# reatail_sales_bigquery
# 🛒 Retail Sales Data Analysis using Google BigQuery

## 📌 Project Overview
This project demonstrates an end-to-end data analysis pipeline using **Google Cloud Platform (GCP)** tools. A retail sales dataset was uploaded to **Google Cloud Storage** and loaded into **BigQuery** for analysis using **SQL queries**. The goal was to gain insights such as total revenue by product, regional performance, and sales trends.

## 🧰 Tools & Technologies
- Google Cloud Platform (GCP)
  - Google Cloud Storage
  - BigQuery
- SQL
- CSV data file (uploaded from local system)

## 📂 Dataset Description
The dataset contains fictional retail sales transactions with the following fields:

| Column     | Description                  |
|------------|------------------------------|
| order_id   | Unique ID for each order     |
| date       | Date of sale                 |
| product    | Product name                 |
| category   | Product category             |
| quantity   | Quantity sold                |
| price      | Price per unit               |
| region     | Region of sale               |

## 🧪 SQL Queries Performed
### 1. Total Revenue by Product
```sql
SELECT
  product,
  SUM(quantity * price) AS total_revenue
FROM
  `your-project.retail_data.retail_sales`
GROUP BY
  product
ORDER BY
  total_revenue DESC;
