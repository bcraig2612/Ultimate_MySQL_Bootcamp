-- Challenge # 1:
-- Find earliest date that a user joined:
SELECT
    DATE_FORMAT(MIN(created_at), "%M %D %Y") as earliest_date
FROM users;
-- earliest_date: Janurary 17th 2019

-- Challenge # 2:
-- Find the email of the 1st (earliest) user: 
SELECT *
FROM users
WHERE  created_at = (SELECT Min(created_at)
FROM users);
-- email: Wyatt_Wiza18@hotmail.com | created_at: 2019-01-17 23:44:33

-- Challenge # 3:
-- Get Total Users According To The Month They Joined:
SELECT Monthname(created_at) AS month,
    Count(*) AS count
FROM users
GROUP BY month
ORDER BY count DESC;

-- Challenge # 4:
-- Count Number of Users with Yahoo Emails:
SELECT Count(*) AS yahoo_users
FROM users
WHERE  email LIKE '%@yahoo.com';
-- yahoo_users: 185

-- Challenge # 5:
-- Calculate Total Number of Users for Each Email Host:
SELECT CASE 
WHEN email LIKE '%@gmail.com' THEN 'gmail' 
WHEN email LIKE '%@yahoo.com' THEN 'yahoo' 
WHEN email LIKE '%@hotmail.com' THEN 'hotmail' 
ELSE 'other' 
end AS provider,
    Count(*) AS total_users
FROM users
GROUP BY provider
ORDER BY total_users DESC; 
--| provider | total_users |
--------------------------|
-- yahoo    |  185       |
-- hotmail |   167      |
-- gmail  |   153      |