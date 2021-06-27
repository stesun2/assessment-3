-- Seed data goes here

-- Insert Customers
INSERT into customer (id, first_name, last_name, email, address_id, order_id)
values(1, 'Bugs', 'Bunny', 'BugsBunny@gmail.com', 1, 1);

-- Insert Addresses
INSERT into addresses (id, line_1, city, state, zipcode)
values(1, '123 Fake St', 'Albuquerque', 'NM', '87101');

-- Insert Order Info
INSERT into order_info (id, order_id, order_date)
values(1, 1, '2021-06-27');

-- Product Info
INSERT into product_info (id, product_name, description, product_id, unit_price, category_id)
values (1, 'Carrots', 'Bag of carrots', '001', 4.99, 1);

-- Category Info
INSERT into category_info (id, category)
values (1, 'Kitchen');