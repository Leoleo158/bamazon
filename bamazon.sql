-- Drops the bamazon_db if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;

-- Creates the database --
CREATE DATABASE bamazon_db;

-- Makes so all the following code will affect bamazon_db --
USE bamazon_db;

-- Creates the "products" table within bamazon_db --
CREATE TABLE products
(
    item_id INTEGER(10) NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INTEGER(10) NOT NULL
);