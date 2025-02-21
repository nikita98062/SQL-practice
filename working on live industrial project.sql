-- 1. create a database the name is ecommerce sales data

CREATE DATABASE IF NOT EXISTS ecommerce_Sales_data
USE ecommerce_Sales_data
SHOW DATABASES

-- 2. create a tables inside the databases named ecommerce sales data

CREATE TABLE `Sales_dataset` (
	`Row ID` DECIMAL(38, 0) NOT NULL, 
	`Order ID` VARCHAR(14) NOT NULL, 
	`Order Date` VARCHAR(10) NOT NULL, 
	`Ship Date` VARCHAR(10) NOT NULL, 
	`Ship Mode` VARCHAR(14) NOT NULL, 
	`Customer ID` VARCHAR(8) NOT NULL, 
	`Customer Name` VARCHAR(22) NOT NULL, 
	`Segment` VARCHAR(11) NOT NULL, 
	`Country/Region` VARCHAR(13) NOT NULL, 
	`City` VARCHAR(17) NOT NULL, 
	`State/Province` VARCHAR(25) NOT NULL, 
	`Postal Code` VARCHAR(5) NOT NULL, 
	`Region` VARCHAR(7) NOT NULL, 
	`Product ID` VARCHAR(15) NOT NULL, 
	`Category` VARCHAR(15) NOT NULL, 
	`Sub-Category` VARCHAR(11) NOT NULL, 
	`Product Name` VARCHAR(127) NOT NULL, 
	`Sales` DECIMAL(38, 4) NOT NULL, 
	`Quantity` DECIMAL(38, 0) NOT NULL, 
	`Discount` DECIMAL(38, 2) NOT NULL, 
	`Profit` DECIMAL(38, 4) NOT NULL
);

SHOW TABLES
DESC Sales_dataset

[mysqld]
local-infile=1

[mysql]
local-infile=1





LOAD DATA LOCAL INFILE "C:\Users\91805\Downloads\SQL\project\Sales_dataset.csv"
INTO TABLE Sales_dataset
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


SELECT * FROM Sales_dataset


