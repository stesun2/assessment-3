-- Queries go here
-- Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
SELECT customer.first_name, customer.last_name, customer.email
FROM customer 
WHERE email like '%gmail%';


-- Retrieve the address of the customers and the order IDs for all orders that were placed in 2020
SELECT addresses.line_1, addresses.city, addresses.state, addresses.zipcode, order_info.order_id, order_info.order_date
FROM addresses, order_info
WHERE order_date BETWEEN DATE '2020-01-01' AND '2020-12-31';


-- Retrieve all product details for products that are under the "Kitchen" category
SELECT * 
FROM product_info
WHERE category = 'Kitchen';


-- Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"
SELECT product_info.product_name, product_info.unit_price
FROM product_info, customer
WHERE customer.first_name = 'Bugs' AND customer.last_name = 'Bunny';
