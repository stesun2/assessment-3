-- Schema creation goes here
-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/

DROP TABLE IF EXISTS customer CASCADE;
DROP TABLE IF EXISTS product CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS order-info CASCADE;



CREATE TABLE customer (
    id          serial        PRIMARY KEY,
    first_name  VARCHAR(24)   NOT NULL,
    last_name   VARCHAR(24)   NOT NULL,
    email       VARCHAR(48)   NOT NULL,
    addresses   VARCHAR(255)  NOT NULL,
);

CREATE TABLE product (
    id           serial       PRIMARY KEY,
    product_name VARCHAR(48)  NOT NULL,
    description  VARCHAR(48)  NOT NULL,
    product_id   INTEGER      NOT NULL,  
    quantity     INTEGER      NOT NULL,
    unit_price   money  
);

CREATE TABLE category (
    id           serial       PRIMARY KEY,
    room_type    VARCHAR(24)  NOT NULL
);

CREATE TABLE order-info (
    id           serial       PRIMARY KEY,
    invoice_num  INTEGER      NOT NULL,
    quantity     INTEGER      NOT NULL,
    order_id     INTEGER      NOT NULL,
    order_date   INTEGER      NOT NULL
);

