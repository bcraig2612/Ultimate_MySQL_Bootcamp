**Refining Selections:**
- More weapons in the arsenal!

- *Using DISTINCT:*
- SELECT DISTINCT author_lname FROM books;
- What about DISTINCT full names?!?! 
- SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;
- SELECT DISTINCT author_fname, author_lname FROM books;

- *Using ORDER BY:*
- Sorting our results
- Ascending Order by default (A-Z) (0-9)
- SELECT author_lname FROM books ORDER BY author_lname;
- SELECT author_lname FROM books ORDER BY author_lname DESC; 
- The above orders by descending order (Z-A) (9-0)
- SELECT released_year FROM books ORDER BY released_year;
- SELECT title, author_fname, author_lname 
FROM books ORDER BY 2; (Shortcut rather than typing ORDER BY author_fname)
- SELECT author_fname, author_lname FROM books 
ORDER BY author_lname, author_fname; (Sorts by last name, and if there's a double, the last name that has a first name that's before goes first)

- *Using LIMIT:*
- SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 5;
- SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,5; (You can set a spot to start at and an amount to list)
- SELECT * FROM tbl LIMIT 95,18446744073709551615;
- SELECT * FROM books LIMIT 2,4; (You can all data from a table at a specific spot and specific amount)

- *Using LIKE:*
- Better Searching
- Case insensitive
- WHERE author_fname LIKE '%da%' --WILDCARDS ("I want names that start with da ")
- WHERE stock_quantity LIKE '____' --4 underscores (Where there is 4 digits)
- But what if I'm searching for a book with a '%' in it or a '_' in it?
- WHERE title LIKE '%\%%'
- WHERE title LIKE '%\_%'
