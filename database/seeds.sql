-- Seed data goes here
-- database/seeds.sql:
-- > SQL containing the seed data to populate your database tables
-- Insert Addresses
INSERT into addresses (id, line_1, city, state, zipcode)
values(1, '123 Fake St', 'Albuquerque', 'NM', '87101');

INSERT into addresses (id, line_1, city, state, zipcode)
values(2, '123 Main St', 'Chicago', 'IL', '60601');

INSERT into addresses (id, line_1, city, state, zipcode)
values(3, '123 Wall St', 'New York City', 'NY', '10001');

INSERT into addresses (id, line_1, city, state, zipcode)
values(4, '420 Stardew Dr', 'Los Angeles', 'CA', '90001');

INSERT into addresses (id, line_1, city, state, zipcode)
values(5, '410 Terry Ave', 'Seattle', 'WA', '98109');

-- Insert Customers
INSERT into customers (id, first_name, last_name, email, address_id)
values(1, 'Bugs', 'Bunny', 'BugsBunny@gmail.com', 1);

INSERT into customers (id, first_name, last_name, email, address_id)
values(2, 'Jon', 'Smith', 'JSmith@yahoo.com', 2);

INSERT into customers (id, first_name, last_name, email, address_id)
values(3, 'Martha', 'Stewart', 'MStewart@gmail.com', 3);

INSERT into customers (id, first_name, last_name, email, address_id)
values(4, 'Elon', 'Musk', 'ElonMusk@tesla.com', 4);

INSERT into customers (id, first_name, last_name, email, address_id)
values(5, 'Jeff', 'Bezos', 'JeffBezos@amazon.com', 5);

-- Product Info
INSERT into products (id, product_name, description, unit_price)
values (1, 'Carrots', 'A bag of carrots', 4.99);

INSERT into products (id, product_name, description, unit_price)
values (2, 'Microwave', 'A microwave oven', 69.99);

INSERT into products (id, product_name, description, unit_price)
values (3, 'Pillow', 'A single pillow', 9.99);

INSERT into products (id, product_name, description, unit_price)
values (4, 'Flamethrower', 'A highly dangerous flammable device', 1499.99);

INSERT into products (id, product_name, description, unit_price)
values (5, 'Drone', 'A robotic drone', 499.99);

-- Category Info
INSERT into categories (id, category_name)
values (1, 'Kitchen');

INSERT into categories (id, category_name)
values (2, 'Kitchen');

INSERT into categories (id, category_name)
values (3, 'Bedroom');

INSERT into categories (id, category_name)
values (4, 'Office');

INSERT into categories (id, category_name)
values (5, 'Office');

-- Insert Order Info
INSERT into orders (id, order_date, customer_id)
values(1, '2021-06-27', 1);

INSERT into orders (id, order_date, customer_id)
values(2, '2021-06-28', 1);

INSERT into orders (id, order_date, customer_id)
values(3, '2020-09-27', 2);

INSERT into orders (id, order_date, customer_id)
values(4, '2020-05-20', 3);

INSERT into orders (id, order_date, customer_id)
values(5, '2020-04-20', 4);

INSERT into orders (id, order_date, customer_id)
values(6, '2021-06-20', 5);

-- Order Products info
INSERT into order_products(id, order_id, product_id)
values(1, 1, 1);

INSERT into order_products(id, order_id, product_id)
values(2, 2, 1);

INSERT into order_products(id, order_id, product_id)
values(3, 2, 2);

INSERT into order_products(id, order_id, product_id)
values(4, 3, 3);

INSERT into order_products(id, order_id, product_id)
values(5, 4, 4);

INSERT into order_products(id, order_id, product_id)
values(6, 5, 5);