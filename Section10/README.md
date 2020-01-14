**Section 10: Revisiting Data Types**
- Storing Text
- VARCHAR
- CHAR
- What's the difference?
- CHAR has a fixed length
- Char(3) -> Only 3 Characters Allowed
- The length of a CHAR column is fixed to the length that you declare when you create the table. The length can be any value from 0 to 255. When CHAR values are stored, they are right-padded with spaces to the specified length. When CHAR values are retrieved, trailing spaces are removed unless the PAD_CHAR_TO_FULL_LENGTH SQL mode is enabled.
- CHAR is faster for fixed length text
  - EXAMPLES:
    - State Abbreviations: CA, NY
    - Yes/No Flags: Y/N
    - Sex: M/F
- Otherwise...USE VARCHAR

**NUMBERS**
- *INT* ( Whole Numbers )
- *DECIMAL* 
- DECIMAL(13, 2)
- First Number --> Total Number of Digits
- Second Number --> Digits After Decimal
  - EXAMPLE:
    - DECIMAL(5, 2)
      - 999.99 [ 5 Digits / 2 Decimal Spots ]
- There's also:
- **FLOAT**
- **DOUBLE**
- Store larger numbers using less space BUT it comes at the cost of precision

**ONTO DATES & TIMES**
- DATE - Values with a date but no time 
- 'YYYY-MM-DD' Format
- 
- TIME - Values with a time but no date
- 'HH:MM:SS' Format

- DATETIME - Values with a Date AND Time 
- 'YYYY-MM-DD HH:MM:SS' Format

*CURDATE()* --> Gives current date
*CURTIME()* --> Gives current time
*NOW()* --> Give current date/time
*DAYNAME()*
*DAY()*
*DAYOFMONTH()*
*DAYOFWEEK()*
*DAYOFYEAR()*
*HOUR()*
*DATE_FORMAT(date, format)*

**!= TIME TO INTRODUCE NOT EQUAL**
-- Select books that were not released in 2017

SELECT title FROM books 
WHERE year != 2017;

**NOT LIKE**
-- Select books with titles that don't start with 'W'

SELECT title FROM books
WHERE title NOT LIKE 'W%';

**> GREATER THAN**
-- Select books released after the year 2000

SELECT * FROM books
WHERE released_year > 2000;

*Small Side Note:*
-- What do you expect from:

SELECT 99 > 1;

**< LESS THAN**
-- Select books released before the year 2000

SELECT * FROM books
WHERE released_year < 2000;

**<= LESS THAN OR EQUAL TO**
**&& LOGICAL AND**
**Condition 1 && Condition 2**
--Both sides must be true
-- SELECT books written by Dave Eggers, published after the year 2010

SELECT * FROM books
WHERE author_lname='Eggers' AND 
released_year > 2010 AND
title LIKE '%novel%';

**|| LOGICAL OR**
**Condition 1 || Condition 2**
--Only one side must be true

SELECT * FROM books
WHERE author_lname='Eggers' &&
released_year > 2010;

SELECT * FROM books
WHERE author_lname='Eggers' ||
released_year > 2010;

**BETWEEN**

-- Before we use BETWEEN, how can we accomplish the same thing using what we already know?
-- Select all books published between 2004 and 2015
-- We would use the logical and &&

SELECT title, released_year FROM 
books WHERE released_year >= 2004 && 
released_year <= 2015;

-- Or now, use BETWEEN

SELECT title, released_year FROM books 
WHERE released_year BETWEEN 2004 AND 2015;

**NOT BETWEEN**

SELECT title, released_year FROM books 
WHERE released_year NOT BETWEEN 2004 AND 2015;

**IN**
-- Select all books written by...Carver or Lahiri or Smith
-- IN makes this much easier to accomplish

SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

**NOT IN**
-- Select all books not published in 2000,2002,2004,2006,2008,2010,2012,2014,2016

SELECT title, released_year FROM books
WHERE released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016);

-- Taking it to the next level!
-- I only want books released after 2000

SELECT title, released_year FROM books
WHERE released_year >= 2000
AND released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016);

**Theres still a better way it doesn't use IN or NOT IN**
**% MODULO**

SELECT title, released_year FROM books
WHERE released_year >= 2000 AND
released_year % 2 != 0;

**CASE STATEMENTS**
+-----------------------------------------------------+---------------+------------------+
| title                                               | released_year | GENRE            |
+-----------------------------------------------------+---------------+------------------+
| The Namesake                                        |          2003 | Modern Lit       |
| Norse Mythology                                     |          2016 | Modern Lit       |
| American Gods                                       |          2001 | Modern Lit       |
| Interpreter of Maladies                             |          1996 | 20th Century Lit |
| A Hologram for the King: A Novel                    |          2012 | Modern Lit       |
| The Circle                                          |          2013 | Modern Lit       |
| The Amazing Adventures of Kavalier & Clay           |          2000 | Modern Lit       |
| Just Kids                                           |          2010 | Modern Lit       |
| A Heartbreaking Work of Staggering Genius           |          2001 | Modern Lit       |
| Coraline                                            |          2003 | Modern Lit       |
| What We Talk About When We Talk About Love: Stories |          1981 | 20th Century Lit |
| Where I'm Calling From: Selected Stories            |          1989 | 20th Century Lit |
| White Noise                                         |          1985 | 20th Century Lit |
| Cannery Row                                         |          1945 | 20th Century Lit |
| Oblivion: Stories                                   |          2004 | Modern Lit       |
| Consider the Lobster                                |          2005 | Modern Lit       |
| 10% Happier                                         |          2014 | Modern Lit       |
| fake_book                                           |          2001 | Modern Lit       |
| Lincoln In The Bardo                                |          2017 | Modern Lit       |
+-----------------------------------------------------+---------------+------------------+

SELECT title, released_year,
       CASE 
         WHEN released_year >= 2000 THEN 'Modern Lit'
         ELSE '20th Century Lit'
       END AS GENRE
FROM books;   

+-----------------------------------------------------+----------------+-------+
| title                                               | stock_quantity | STOCK |
+-----------------------------------------------------+----------------+-------+
| The Namesake                                        |             32 | *     |
| Norse Mythology                                     |             43 | *     |
| American Gods                                       |             12 | *     |
| Interpreter of Maladies                             |             97 | **    |
| A Hologram for the King: A Novel                    |            154 | ***   |
| The Circle                                          |             26 | *     |
| The Amazing Adventures of Kavalier & Clay           |             68 | **    |
| Just Kids                                           |             55 | **    |
| A Heartbreaking Work of Staggering Genius           |            104 | ***   |
| Coraline                                            |            100 | **    |
| What We Talk About When We Talk About Love: Stories |             23 | *     |
| Where I'm Calling From: Selected Stories            |             12 | *     |
| White Noise                                         |             49 | *     |
| Cannery Row                                         |             95 | **    |
| Oblivion: Stories                                   |            172 | ***   |
| Consider the Lobster                                |             92 | **    |
| 10% Happier                                         |             29 | *     |
| fake_book                                           |            287 | ***   |
| Lincoln In The Bardo                                |           1000 | ***   |
+-----------------------------------------------------+----------------+-------+

SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;   

*OR*

SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;   

**EVALUATE THE FOLLOWING:**

(1.) SELECT 10 != 10;

-- FALSE

(2.) SELECT 15 > 14 && 99 - 5 <= 94;

--TRUE

(3.) SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;

--TRUE

(4.) Select All Books Written Before 1980 (non inclusive)

SELECT title, released_year FROM books WHERE released_year < 1980;

(5.) Select All Books Written By Eggers Or Chabon

SELECT title, author_lname FROM books WHERE author_lname='Eggers' OR author_lname='Chabon';
SELECT title, author_lname FROM books WHERE author_lname IN ('Eggers','Chabon');

(6.) Select All Books Written By Lahiri, Published after 2000

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Lahiri' && released_year > 2000;

(7.) Select All books with page counts between 100 and 200

SELECT title, pages FROM books WHERE pages >= 100 && pages <=200;
SELECT title, pages FROM books WHERE pages BETWEEN 100 AND 200;

(8.) Select all books where author_lname  starts with a 'C' or an 'S''

SELECT 
    title, 
    author_lname 
FROM books 
WHERE 
    author_lname LIKE 'C%' OR 
    author_lname LIKE 'S%';

SELECT 
    title, 
    author_lname 
FROM books 
WHERE 
    SUBSTR(author_lname,1,1) = 'C' OR 
    SUBSTR(author_lname,1,1) = 'S';

SELECT title, author_lname FROM books 
WHERE SUBSTR(author_lname,1,1) IN ('C', 'S');

(9.) If title contains: 
    'stories'  ->  Short Stories 
    Just Kids and A Heartbreaking Work  ->  Memoir 
    Everything Else  ->  Novel

SELECT 
    title, 
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids' OR title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM books;

(10.) BONUS: Make This Happen
+-----------------------------------------------------+----------------+---------+
| title                                               | author_lname   | COUNT   |
+-----------------------------------------------------+----------------+---------+
| What We Talk About When We Talk About Love: Stories | Carver         | 2 books |
| The Amazing Adventures of Kavalier & Clay           | Chabon         | 1 book  |
| White Noise                                         | DeLillo        | 1 book  |
| A Hologram for the King: A Novel                    | Eggers         | 3 books |
| Oblivion: Stories                                   | Foster Wallace | 2 books |
| Norse Mythology                                     | Gaiman         | 3 books |
| 10% Happier                                         | Harris         | 1 book  |
| fake_book                                           | Harris         | 1 book  |
| The Namesake                                        | Lahiri         | 2 books |
| Lincoln In The Bardo                                | Saunders       | 1 book  |
| Just Kids                                           | Smith          | 1 book  |
| Cannery Row                                         | Steinbeck      | 1 book  |
+-----------------------------------------------------+----------------+---------+

SELECT author_fname, author_lname,
    CASE 
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM books 
GROUP BY author_lname, author_fname;