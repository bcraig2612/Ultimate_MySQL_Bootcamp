***SECTION 9: The Magic of Aggregate Functions***

                                        ____*COUNT*____
- SELECT COUNT(*) FROM books; [ Returns total amount of items in books. ]
- SELECT COUNT(author_fname) FROM books; [ This will return all author even duplicate names ]
- SELECT COUNT(DISTINCT author_fname) FROM books; [ This will properly count each name only one time. ]
- SELECT COUNT(DISTINCT author_lname) FROM books; [ Same as above but with last names. ]
- SELECT COUNT(*) FROM books WHERE title LIKE '%the%'; [How many titles contain 'the'?]

                                        ____*GROUP BY*____
- [ GROUP BY summarizes or aggregates identical data into single rows. ]
- SELECT title, author_lname FROM books GROUP BY author_lname; [ This groups the data with identical last names ]
- SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname; [ This presents the author's last name with a count of how many books that they have stored in the database ]
- SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname; [ Same as above but by first & last names. ]

                                        ___*MIN & MAX*____
- SELECT MIN(released_year) FROM books;

- SELECT MAX(pages) FROM books;

- SELECT * FROM books WHERE pages = (SELECT Min(pages) FROM books); 
- [ OR ]
- SELECT * FROM books ORDER BY pages ASC LIMIT 1;

                                        ___*MIN/MAX with GROUP BY*____
- [ Find the year each author published their first book ]
- SELECT author_fname, author_lname, Min(released_year) FROM books GROUP BY author_lname, author_fname; 
- SELECT author_fname, author_lname, Min(released_year) AS first_book FROM books GROUP BY author_lname, author_fname;

- [ Find the longest page count for each author ]
- SELECT author_fname, author_lname, Max(pages) FROM books GROUP BY author_lname, author_fname;
- [ OR ]
- SELECT CONCAT(author_fname, ' ', author_lname) AS author, MAX(pages) AS 'longest book' FROM books GROUP BY author_lname, author_fname;
  
                                        ____*SUM*____
- [ Adds Things Together! ]
- [ Sum all pages in the entire database ]
- SELECT SUM(pages) FROM books;
  
                                        ____*SUM + GROUP BY*____
- [ Sum all pages each author has written ]
- SELECT author_fname, author_lname, Sum(pages) FROM books GROUP BY author_lname, author_fname;
- SELECT author_fname, author_lname, Sum(pages) AS total_pages FROM books GROUP BY author_lname, author_fname;
  
                                        ____*AVG*____
- [ Calculate the average released_year across all books ]
- SELECT AVG(released_year) FROM books;
- [ Calculate the average stock quantity for books released in the same year ]
- SELECT AVG(stock_quantity) FROM books GROUP BY released_year;