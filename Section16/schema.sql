CREATE TABLE users
(
    email VARCHAR(255) PRIMARY KEY,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users
    (email)
VALUES
    ('bcraig2612@gmail.com'),
    ('devbrandoncraig@gmail.com');