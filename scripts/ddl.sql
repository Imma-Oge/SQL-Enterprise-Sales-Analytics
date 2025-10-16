/*
this script creates the various tables fact and dimensions nd loads data into them from the staging area
*/

CREATE OR REPLACE TABLE fact_sales
(
    order_number varchar(50),
    product_key int,
    customer_key int,
    order_date date,
    shipping_date date,
    due_date date,
    sales_amount float,
    quantity int,
    price float
)

COPY INTO fact_sales
FROM  '@gold_stage/gold.fact_sales.csv'
file_format = ( type =csv skip_header =1 )
SELECT * FROM fact_sales
  
---creating and loading into product dimension table from stage-----
CREATE OR REPLACE TABLE dim_products 
(
    product_key varchar(50),
    product_id int,
    product_number varchar(50),
    product_name varchar(50),
    category_id varchar(50),
    category varchar(50),
    subcategory varchar(50),
    maintenance varchar(50),
    cost float,
    product_line varchar(50),
    start_date date
);

COPY INTO dim_products
FROM '@gold_stage/gold.dim_products.csv'
file_format = (type = csv skip_header = 1);

SELECT * FROM dim_products
  
---creating and loading into customer dimension table from stage-----
CREATE OR REPLACE TABLE dim_customers
(
    customer_key int,
    customer_id int,
    customer_number varchar(50),
    first_name varchar(50),
    last_name varchar(50),
    country varchar(50),
    marital_status varchar(50),
    gender varchar(50), 
    birthdate date,
    create_date date

);
COPY INTO dim_customers
FROM  '@gold_stage/gold.dim_customers.csv'
file_format = (type = csv skip_header = 1);

SELECT * FROM dim_customers
