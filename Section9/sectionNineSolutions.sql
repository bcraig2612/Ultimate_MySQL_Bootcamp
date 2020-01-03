-- (1) Print the number of books in the database
-- [ how many books total ]
SELECT COUNT(*) AS total_books FROM books; 




-- (2) Print out how many books were released in each year
-- [ how many books total by year ]
SELECT COUNT(*) FROM books GROUP BY released_year;
-- [ how many books total by year more detailed ]
SELECT released_year, COUNT(*) AS book_released_per_year FROM books GROUP BY released_year;




-- (3) Print out the total number of books in stock
SELECT Sum(stock_quantity) AS total_books_in_stock FROM books;

-- (4) Find the average released_year for each author
-- [ average year of release ]
SELECT AVG(released_year) AS avg_year_of_release FROM books GROUP BY author_lname, author_fname;
-- [ average year of release more detailed ]
SELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_lname, author_fname;

-- (5) Find the full name of the author who wrote the longest book
SELECT CONCAT(author_fname, ' ', author_lname) FROM books WHERE pages = (SELECT Max(pages) FROM books);
SELECT CONCAT(author_fname, ' ', author_lname) FROM books ORDER BY pages DESC LIMIT 1;
-- [ Selects pages in descending order with the author first and last name ]
SELECT pages, CONCAT(author_fname, ' ', author_lname) FROM books ORDER BY pages DESC;

-- (6) Make This Happen:
+------+---------+-----------+
| year | # books | avg pages |
+------+---------+-----------+
| 1945 |       1 |  181.0000 |
| 1981 |       1 |  176.0000 |
| 1985 |       1 |  320.0000 |
| 1989 |       1 |  526.0000 |
| 1996 |       1 |  198.0000 |
| 2000 |       1 |  634.0000 |
| 2001 |       3 |  443.3333 |
| 2003 |       2 |  249.5000 |
| 2004 |       1 |  329.0000 |
| 2005 |       1 |  343.0000 |
| 2010 |       1 |  304.0000 |
| 2012 |       1 |  352.0000 |
| 2013 |       1 |  504.0000 |
| 2014 |       1 |  256.0000 |
| 2016 |       1 |  304.0000 |
| 2017 |       1 |  367.0000 |
+------+---------+-----------+

SELECT released_year AS year, COUNT(*) AS '# of books', AVG(pages) AS 'avg pages' FROM books GROUP BY released_year;