-- EXAMPLE 1:
SELECT * FROM customers;
-- EXAMPLE 2:
SELECT * FROM orders;
-- EXAMPLE 3:
SELECT * FROM products ORDER BY Price DESC;
-- EXAMPLE 4:
SELECT
    customerName,
    COUNT(*) AS 'number of orders'
FROM customers
INNER JOIN orders
        ON orders.customerID = customers.customerID
GROUP BY customers.customerID;
-- EXAMPLE 5:
SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;
-- EXAMPLE 6:
SELECT first_name, 
       last_name, 
       Count(rating)                    AS COUNT, 
       Ifnull(Min(rating), 0)           AS MIN, 
       Ifnull(Max(rating), 0)           AS MAX, 
       Round(Ifnull(Avg(rating), 0), 2) AS AVG, 
       CASE 
         WHEN Count(rating) >= 10 THEN 'POWER USER' 
         WHEN Count(rating) > 0 THEN 'ACTIVE' 
         ELSE 'INACTIVE' 
       end                              AS STATUS 
FROM   reviewers 
       LEFT JOIN reviews 
              ON reviewers.id = reviews.reviewer_id 
GROUP  BY reviewers.id; 
-- EXAMPLE 7:
DROP TABLE customers;