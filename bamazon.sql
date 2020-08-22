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

-- Creates new rows containing data in all columns given --
INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (5000, "Apple", "Produce", 1.25, 60);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (5001, "Banana", "Produce", .99, 50);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (5002, "Orange", "Produce", 1.35, 30);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (5003, "Pineapple", "Produce", 2.29, 8);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (5004, "Watermelon", "Produce", 3.39, 20);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (5005, "Cherry", "Produce", 1.19, 40);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (5006, "Magical Gum-Gum Fruit", "Produce", 999.99, 1);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (5007, "Blueberry", "Produce", 1.59, 20);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (5008, "Grapefruit", "Produce", 1.89, 36);

INSERT INTO products
    (item_id, product_name, department_name, price, stock_quantity)
VALUES
    (5009, "Kiwi", "Produce", 2.59, 25);

SELECT *
FROM products;
