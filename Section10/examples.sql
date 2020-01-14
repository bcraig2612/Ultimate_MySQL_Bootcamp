-- Lessons 149 - 152 SQL Code:
CREATE TABLE dogs
(
    name CHAR(5),
    breed VARCHAR(10)
);

INSERT INTO dogs
    (name, breed)
VALUES
    ('bob', 'beagle');

INSERT INTO dogs
    (name, breed)
VALUES
    ('robby', 'corgi');

INSERT INTO dogs
    (name, breed)
VALUES
    ('Princess Jane', 'Retriever');

SELECT *
FROM dogs;

INSERT INTO dogs
    (name, breed)
VALUES
    ('Princess Jane', 'Retrievesadfdsafdasfsafr');

SELECT *
FROM dogs;

-- Lessons 153 - 154 SQL CODE:
CREATE TABLE items
(
    price DECIMAL(5,2)
);

INSERT INTO items
    (price)
VALUES(7);

INSERT INTO items
    (price)
VALUES(7987654);

INSERT INTO items
    (price)
VALUES(34.88);

INSERT INTO items
    (price)
VALUES(298.9999);

INSERT INTO items
    (price)
VALUES(1.9999);

SELECT *
FROM items;

-- Lessons 155 - 156 SQL CODE:
CREATE TABLE thingies
(
    price FLOAT
);

INSERT INTO thingies
    (price)
VALUES
    (88.45);

SELECT *
FROM thingies;

INSERT INTO thingies
    (price)
VALUES
    (8877.45);

SELECT *
FROM thingies;

INSERT INTO thingies
    (price)
VALUES
    (8877665544.45);

SELECT *
FROM thingies;

-- Lessons 157 - 160 SQL CODE:
CREATE TABLE people
(
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

INSERT INTO people
    (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

INSERT INTO people
    (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

SELECT *
FROM people;