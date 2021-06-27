-- Seed data goes here

-- Insert Customers
INSERT into customer (id, first_name, last_name, email, address_id, order_id)
values(1, 'Bugs', 'Bunny', 'BugsBunny@gmail.com', 1, 1);

INSERT into customer (id, first_name, last_name, email, address_id, order_id)
values(2, 'Jon', 'Smith', 'JSmith@yahoo.com', 2, 2);

-- Insert Addresses
INSERT into addresses (id, line_1, city, state, zipcode)
values(1, '123 Fake St', 'Albuquerque', 'NM', '87101');

INSERT into addresses (id, line_1, city, state, zipcode)
values(2, '123 Main St', 'Chicago', 'IL', '60601');

-- Insert Order Info
INSERT into order_info (id, order_id, order_date)
values(1, 1, '2021-06-27');

INSERT into order_info (id, order_id, order_date)
values(2, 2, '2020-09-27');

-- Product Info
INSERT into product_info (id, product_name, description, product_id, unit_price, category)
values (1, 'Carrots', 'Bag of carrots', '001', 4.99, 'Kitchen');

INSERT into product_info (id, product_name, description, product_id, unit_price, category)
values (2, 'Microwave', 'A microwave oven', '002', 69.99, 'Kitchen');

-- Category Info
-- INSERT into category_info (id, category)
-- values (1, 'Kitchen');

-- INSERT into category_info (id, category)
-- values (2, 'Bedroom');

-- INSERT into category_info (id, category)
-- values (3, 'Living Room');

-- INSERT into category_info (id, category)
-- values (4, 'Bathroom');

-- INSERT into category_info (id, category)
-- values (5, 'Office');