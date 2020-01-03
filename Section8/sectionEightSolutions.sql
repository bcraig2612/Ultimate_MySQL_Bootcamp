-- PROBLEM 1:
SELECT
  title
FROM books
WHERE title LIKE '%stories%';


-- PROBLEM 2:
SELECT
  title,
  pages
FROM books
ORDER BY pages DESC LIMIT 1;


-- PROBLEM 3:
SELECT
  CONCAT(title, ' - ', released_year) AS summary
FROM books
ORDER BY released_year DESC LIMIT 0, 3;


-- PROBLEM 4:
SELECT
  title,
  author_lname
FROM books
WHERE author_lname LIKE '% %';


-- PROBLEM 5:
SELECT
  title,
  released_year,
  stock_quantity
FROM books
ORDER BY stock_quantity LIMIT 3;


-- PROBLEM 6:
SELECT
  title,
  author_lname
FROM books
ORDER BY author_lname, title;


-- PROBLEM 7:
SELECT
  CONCAT('MY FAVORITE AUTHOR IS ', UPPER(author_fname), ' ', UPPER(author_lname), '!') AS yell
FROM books
ORDER BY author_lname;