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

DROP TABLE IF EXISTS addresses CASCADE;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS orders CASCADE;

CREATE TABLE addresses (
    id          serial        PRIMARY KEY,
    line_1      varchar(48)   NOT NULL,
    city        varchar(24)   NOT NULL,
    state       varchar(2)    NOT NULL,
    zipcode     varchar(10)   NOT NULL
);

CREATE TABLE customers (
    id          serial        PRIMARY KEY,
    first_name  varchar(24)   NOT NULL,
    last_name   varchar(24)   NOT NULL,
    email       varchar(48)   NOT NULL,
    address_id  integer       REFERENCES addresses          
);

CREATE TABLE products (
    id           serial       PRIMARY KEY,
    product_name varchar(48)  NOT NULL,
    description  varchar(48)  NOT NULL,
    unit_price   money        NOT NULL
);

CREATE TABLE categories (
    id            serial      PRIMARY KEY,
    category_name varchar(24) NOT NULL, 
    product_id    integer     REFERENCES products
);

CREATE TABLE orders (
    id           serial       PRIMARY KEY,
    order_number INTEGER      NOT NULL,
    order_date   DATE         NOT NULL,
    customer_id  integer      REFERENCES customers,
    product_id   integer      REFERENCES products
);