-- Queries go here

-- Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
SELECT customers.first_name, customers.last_name, customers.email
FROM customers 
WHERE email like '%gmail%';

-- Retrieve the address of the customers and the order IDs for all orders that were placed in 2020
SELECT addresses.line_1, addresses.city, addresses.state, addresses.zipcode, orders.id, orders.order_date
FROM orders
JOIN addresses ON addresses.id = orders.customer_id
WHERE orders.order_date BETWEEN DATE '2020-01-01' AND '2020-12-31';

-- Retrieve all product details for products that are under the "Kitchen" category
SELECT products.product_name, products.description, unit_price, categories.category_name
FROM categories
JOIN products ON products.id = categories.product_id
WHERE categories.category_name = 'Kitchen';

-- Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"
SELECT products.product_name, products.unit_price
FROM orders
INNER JOIN products ON orders.product_id = products.id
WHERE orders.customer_id = 1;