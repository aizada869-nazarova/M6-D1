Ex 1.

1)SELECT * FROM film

2) SELECT 
district,
phone,
postal_code
FROM address

3)SELECT 
district || '' || phone ||''|| postal_code AS full_address
FROM address
 
Ex 2.

1)SELECT 
first_name
FROM customer
WHERE first_name LIKE 'J%'

2)
SELECT 
amount
FROM payment
WHERE amount BETWEEN 3 AND 5

3)SELECT 
payment_date
FROM payment
WHERE payment_date BETWEEN '2007-02-15' AND '2007-02-20'

4)

5)SELECT 
amount,
payment_date
FROM
payment
WHERE amount BETWEEN 4 AND 6 
ORDER BY payment_date DESC

6)SELECT 
first_name
FROM
customer
ORDER BY first_name DESC
LIMIT 5

7)SELECT 
first_name,
customer_id
FROM
customer
ORDER BY customer_id
LIMIT 5 OFFSET 10


EX3
1)
INSERT INTO 
customer (store_id,
first_name,
last_name,
email,
address_id
)
VALUES
(77, 'Aizda', 'Nazarova', 'joni@gmail.com', 77)
RETURNING*

2)UPDATE customer
SET

first_name='Aizda'
WHERE 
customer_id=2
RETURNING*

SELECT 
c.first_name AS customer_first_name,
c.last_name AS customer_last_name,
s.first_name AS staff_first_name,
s.last_name AS staff_last_name, 
amount
FROM payment p 
JOIN customer c
ON p.customer_id=c.customer_id
JOIN staff s




-- ROUND((SELECT AVG(amount) FROM payment),2)
-- HAVING SUM(amount)> (SELECT AVG(amount) FROM payment)
-- SUM (amount) AS total_paid