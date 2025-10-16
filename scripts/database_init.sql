--initializing database------
/*
This script creates a new database named "market_sales" after checking if it already exists.
If exists, it is replaced . Additionally, the script sets up a schema "gold" and a staging area "gold_stage"

Warning: Running this script will replace the entire 'market_sales' database if it already exists, and all records will be permanently lost. Therefore proceed with caution
*/

CREATE OR REPLACE DATABASE market_sales;
 
USE DATABASE market_sales;

CREATE SCHEMA gold;

USE SCHEMA gold;

CREATE OR REPLACE STAGE gold_stage; --for loading dataset-----
