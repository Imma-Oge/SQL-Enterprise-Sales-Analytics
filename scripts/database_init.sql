--initializing database------

CREATE OR REPLACE DATABASE market_sales;
 
USE DATABASE market_sales;

CREATE SCHEMA gold;

USE SCHEMA gold;

CREATE OR REPLACE STAGE gold_stage; --for loading dataset-----
