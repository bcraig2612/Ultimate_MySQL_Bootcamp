What is a database?
(1.) A collection of data.
(2.) A method for accessing and manipulating that data.
- A structured set of computerized data with an accessible interface.
- A database is just a bunch of tables. (In a relational database, at least)

SQL:
- Structured Query Language
- The language we use to talk to our databases

Relational Databases that use SQL:
(1.) MySQL
(2.) SQLite
(3.) PostgreSQL
(4.) Oracle
(5.) Many others

Takeaways:
(1.) Once you learn SQL, it's pretty easy to switch to another DB that uses SQL.
(2.) What makes databases (DBMS) unique are the features that they offer, not the language.

Tables:
- Rows
- Columns
- Headers
- Data Types (Numeric Types, String Types, Date Types)


MySQL: The Basics of CRUD
**CREATE EXAMPLE:**
    (INSERT INTO)


**READ EXAMPLES:**
    (SELECT * FROM cats;)
    (SELECT name FROM cats;)
    (SELECT * FROM cats WHERE age=4;)
    (SELECT * FROM cats WHERE name='Egg';) 
- The * in "SELECT * FROM cats" means "Give me all columns."


**UPDATE EXAMPLES:**
    (UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';)
    (UPDATE cats SET age=14 WHERE name='Misty';)
- A good rule of thumb is to try SELECT before you actually UPDATE


**DELETE EXAMPLES:**
    (DELETE FROM cats WHERE name='Egg';)
    (DELETE FROM cats;) <-- Deletes Everything
- Always run select first to double check...

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