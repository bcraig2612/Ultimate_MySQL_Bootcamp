-- CREATE TABLE customer (
--     customer_id INT NOT NULL AUTO_INCREMENT,
--     first_name VARCHAR(20) NOT NULL,
--     last_name VARCHAR(20) NOT NULL,
--     age INT,
--     PRIMARY KEY (customer_id)
-- );

-- CREATE TABLE dogs 
-- (
-- name VARCHAR(20) DEFAULT 'Not Given A Name',
-- age INT default 1
-- );

-- INSERT INTO dogs(age) VALUES(5);
-- INSERT INTO dogs(name) VALUES('Turtle');

-- SELECT * FROM dogs;

CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    last_name VARCHAR(24) NOT NULL,
    first_name VARCHAR(24) NOT NULL,
    middle_name VARCHAR(24),
    age INT NOT NULL,
    current_status VARCHAR(100) NOT NULL DEFAULT 'employed',
    PRIMARY KEY (employee_id)
);