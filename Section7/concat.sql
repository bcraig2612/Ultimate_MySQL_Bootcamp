SELECT CONCAT(author_fname, ' ', author_lname) FROM books;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'full_name' FROM books;

SELECT author_fname AS first, author_lname AS last,
CONCAT(author_fname, ' ', author_lname) AS full_name FROM books;