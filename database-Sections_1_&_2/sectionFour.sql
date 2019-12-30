CREATE TABLE dogs 
(
name VARCHAR(20) DEFAULT 'Not Given A Name',
age INT default 1
);

INSERT INTO dogs(age) VALUES(5);
INSERT INTO dogs(name) VALUES('Turtle');

SELECT * FROM dogs;