**Aliases:** 
- Makes it easier to read results
(SELECT cat_id AS id, name FROM cats;)

**SQL FILE USAGE:**
- create SQL file
- to import the file, run this code:  (source file_name.sql)  

**WORKING WITH CONCAT:**
- combine data for cleaner output
- CONCAT(x, y, z) 
- CONCAT(column, anotherColumn)
- CONCAT(column, 'text', anotherColumn, 'more text')
- CONCAT(column, ' ', anotherColumn)
**WORKING WITH CONCAT_WS:**
-concat with separator
- SELECT 
  CONCAT_WS(' - ', title, author_fname, author_lname) 
  FROM books;

**WORKING WITH SUBSTRING or SUBSTR:**
- Work with parts of strings 
- SELECT SUBSTRING ('Hello World', 1, 4);
- This returns 'Hell'
- SELECT SUBSTRING ('Hello World', 7);
- This returns 'World'
- SELECT SUBSTRING ('Hello World', -3);
- This returns 'rld' 
- *NOW WITH COLUMNS:*
- SELECT SUBSTRING(title, 1, 10) FROM books;
- SELECT SUBSTRING(title, 1, 10) AS 'short_title' FROM books;
**USING CONCAT & SUBSTRING TOGETHER:**
- SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short_title' FROM books;

**USING REPLACE:**
- Replace parts of strings
- Case sensitive
- SELECT REPLACE('Hello World', 'Hell', '%$#@');
- SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');
- SELECT SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'weird_string' FROM books;

**USING REVERSE:**
- Will reverse a string
- SELECT REVERSE('Hello World');
- SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;

**USING CHAR_LENGTH:**
- Counts the characters in a string
- SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
- SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;

**Using UPPER() and LOWER():**
- Change a string's case
- SELECT UPPER('Hello World');
- SELECT LOWER('Hello World');
- SELECT UPPER(title) from books;
- SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;

