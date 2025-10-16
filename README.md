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


🔑 Key Metrics Explained

| Metrics | Description                                       |
:---------|:-------------------------------------------------:|    
|Recency  |Months since last transaction
|Lifespan |Total Months as an active customer or product
|AOV      |Average Order Value(Total sales/Total orders)
|AMS      |Average monthly spend(Total sales/Lifespan in months
|Cumulative sales |Running Total of sales over time
|YoY Growth       |Current year sales vs Previous year


## 📊 Sample Insights
The analytics enable you to answer questions like:

Which product categories drive the most revenue?
How many VIP customers do we have, and what's their contribution?
What's the year-over-year growth for each product?
Which products are underperforming?
What's the average customer lifespan and spending pattern?
How is our monthly sales trend performing?

## Adding New Metrics
The views can be extended with additional KPIs by adding calculations in the SELECT statements of the gold layer views.

## 📁 Project Structure
```
sales-analytics/
├── README.md
├── sql/
│   ├── ddl/
│   │   ├── fact_sales.sql
│   │   ├── dim_customers.sql
│   │   └── dim_products.sql
│   ├── analysis/
│   │   ├── sales_trends.sql
│   │   ├── customer_segmentation.sql
│   │   └── product_performance.sql
│   └── views/
│       ├── customer_report.sql
│       └── product_report.sql
└── docs/
    └── data_dictionary.md
```

## 🤝 Contribution
Contributions are welcome! Areas for enhancement:

Additional customer behavior analytics
Predictive modeling integration
Automated reporting dashboards

## 📝 Notes

All date calculations use Snowflake's native date functions
Window functions (OVER, PARTITION BY) are extensively used for advanced analytics
CTEs (Common Table Expressions) structure complex queries for readability
The gold layer follows medallion architecture principles sequel to the-Data-warehouse-with-Snowflake project

##  About the Author
Immaculate Ogechi is a data professional specializing in analytics engineering and business intelligence. With expertise in SQL, data warehousing, and dimensional modeling, she transforms raw data into actionable insights that drive business decisions. This project showcases her ability to design scalable analytics solutions using modern data stack tools like Snowflake.

Let's Connect on [LinkedIn](www.linkedin.com/in/immaculateogechi)
