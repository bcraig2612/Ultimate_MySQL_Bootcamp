-- Answer #1:
CREATE TABLE shirts
(
shirt_id INT NOT NULL AUTO_INCREMENT,
article VARCHAR(100),
color VARCHAR(100),
shirt_size VARCHAR(10),
last_worn INT,
PRIMARY KEY (shirt_id)
);
-- Answer #2:
INSERT INTO shirts(article, color, shirt_size, last_worn) 
VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);
-- Answer #3:
SELECT article, color FROM shirts; 
-- Answer #4:
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size='M';
-- Answer #5: 
UPDATE shirts SET shirt_size="L" WHERE article="polo shirt";
-- Answer #6:
UPDATE shirts SET last_worn=0 WHERE last_worn=15;
-- Answer #7:
UPDATE shirts SET shirt_size="XS", color="off white" WHERE color="white";
-- Answer #8:
DELETE FROM shirts WHERE last_worn=200;
-- Answer #9:
DELETE FROM shirts WHERE article="tank top";
-- Answer #10:
DELETE FROM shirts;
-- Answer #11:
DROP TABLE shirts;