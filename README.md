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
  `vignesh-15.v15.retail_sales`
GROUP BY
  product
ORDER BY
  total_revenue DESC;

📊 Insights
Identified top-performing products by revenue

Analyzed sales distribution across regions

Built logic to compute total_sales directly in SQL without any external tools

✅ Outcome
Successfully created a working data pipeline without any code (Python-free)

Developed SQL skills and experience with GCP cloud data tools

Built a real-world project for my data engineering portfolio

📁 File Structure
bash
Copy
Edit
retail_sales_sample.csv    # Raw dataset uploaded to Cloud Storage

✍️ Author
Vigneshwar Rao Garige
Aspiring Data Engineer | GCP-Trained | Business-Driven Thinker

📌 Next Steps
Automate loading using scheduled queries

Visualize data using Looker Studio or Google Sheets

Expand to multiple datasets (e.g., returns, customers)
