-- Seed data goes here
-- database/seeds.sql:
-- > SQL containing the seed data to populate your database tables

-- Insert Customers
INSERT into customer (id, first_name, last_name, email, address_id)
values(1, 'Bugs', 'Bunny', 'BugsBunny@gmail.com', 1);

INSERT into customer (id, first_name, last_name, email, address_id)
values(2, 'Jon', 'Smith', 'JSmith@yahoo.com', 2);

INSERT into customer (id, first_name, last_name, email, address_id)
values(3, 'Martha', 'Stewart', 'MStewart@gmail.com', 3);

INSERT into customer (id, first_name, last_name, email, address_id)
values(4, 'Elon', 'Musk', 'ElonMusk@tesla.com', 4);

INSERT into customer (id, first_name, last_name, email, address_id)
values(5, 'Jeff', 'Bezos', 'JeffBezos@amazon.com', 5);

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

-- Insert Order Info
INSERT into order_info (id, order_id, order_date)
values(1, 1, '2021-06-27');

INSERT into order_info (id, order_id, order_date)
values(2, 2, '2020-09-27');

INSERT into order_info (id, order_id, order_date)
values(3, 3, '2020-04-20');

INSERT into order_info (id, order_id, order_date)
values(4, 4, '2020-04-20');

INSERT into order_info (id, order_id, order_date)
values(5, 5, '2021-06-20');

-- Product Info
INSERT into product_info (id, product_name, description, product_id, unit_price, category)
values (1, 'Carrots', 'Bag of carrots', '001', 4.99, 'Kitchen');

INSERT into product_info (id, product_name, description, product_id, unit_price, category)
values (2, 'Microwave', 'A microwave oven', '002', 69.99, 'Kitchen');

INSERT into product_info (id, product_name, description, product_id, unit_price, category)
values (3, 'Pillow', 'A single pillow', '003', 9.99, 'Bedroom');

INSERT into product_info (id, product_name, description, product_id, unit_price, category)
values (4, 'Flamethrower', 'A highly dangerous flammable device', '004', 1499.99, 'Office');

INSERT into product_info (id, product_name, description, product_id, unit_price, category)
values (5, 'Drone', 'A robotic drone', '005', 499.99, 'Office');