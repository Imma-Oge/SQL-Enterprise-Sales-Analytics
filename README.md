# SQL-Enterprise-Sales-Analytics


Thhis is a comprehensive SQL-based analytics solution for retail and e-commerce businesses, delivering actionable insights on sales performance, customer behavior, and product profitability.


## 🎯 Project Overview
 This project implements a complete analytical framework for sales data analysis using dimensional modeling and advanced SQL techniques. It transforms raw transactional data into strategic business intelligence through automated reporting views and customer/product segmentation.


## Key Features

 * Sales Performance Analysis: Year-over-year comparisons, monthly trends, and running totals
 * Customer Segmentation: RFM-style analysis with VIP/Regular/New customer classification
 * Product Intelligence: Performance tiers, category contribution analysis, and profitability metrics
 * Automated Reporting: Gold-layer views for customer and product reports
 * Business KPIs: AOV, CLV, recency, average monthly spend, and more

## Data Architecture
Data Model
The project uses a star schema design with:

* gold.fact_sales - Central fact table containing transactional data
* gold.dim_customers - Customer dimension with demographics
* gold.dim_products - Product dimension with cost and categorization

## Layer Structure
```
Bronze → Silver → Gold
                  ├── customer_report (view)
                  └── product_report (view)
```
