-- Schema creation goes here
-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/



-- Part I: Back-end Database

-- Your database should be designed to store customer, product, category, and order information. 
-- SQL containing the schema design for your database (tables and relationships)
-- SQL containing queries to extract the following data from your database tables:

-- > Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
-- > Retrieve the address of the customers and the order IDs for all orders that were placed in 2020
-- > Retrieve all product details for products that are under the "Kitchen" category
-- > Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"


DROP TABLE IF EXISTS customer CASCADE;
DROP TABLE IF EXISTS addresses CASCADE;
DROP TABLE IF EXISTS order_info CASCADE;
DROP TABLE IF EXISTS product_info CASCADE;
-- DROP TABLE IF EXISTS category_info CASCADE;

CREATE TABLE customer (
    id          serial        PRIMARY KEY,
    first_name  VARCHAR(24)   NOT NULL,
    last_name   VARCHAR(24)   NOT NULL,
    email       VARCHAR(48)   NOT NULL,
    address_id  INTEGER,      
);

CREATE TABLE addresses (
    id          serial        PRIMARY KEY,
    line_1      VARCHAR(255)  NOT NULL,
    city        VARCHAR(24)   NOT NULL,
    state       VARCHAR(2)    NOT NULL,
    zipcode     INTEGER       NOT NULL

);

CREATE TABLE order_info (
    id           serial       PRIMARY KEY,
    order_id     INTEGER      NOT NULL,
    order_date   DATE         NOT NULL
);

CREATE TABLE product_info (
    id           serial       PRIMARY KEY,
    product_name VARCHAR(48)  NOT NULL,
    description  VARCHAR(48)  NOT NULL,
    product_id   INTEGER      NOT NULL,  
    unit_price   MONEY        NOT NULL,
    category     VARCHAR(24)

);



