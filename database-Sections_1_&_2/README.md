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