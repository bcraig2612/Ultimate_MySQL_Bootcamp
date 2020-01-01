-- Answer #1:
SELECT cat_id
FROM cats;
-- Answer #2:
SELECT name, breed
FROM cats;
-- Answer #3:
SELECT name, age
FROM cats
WHERE breed="Tabby";
-- Answer #4:
SELECT cat_id, age
FROM cats
WHERE cat_id=age;
-- Answer #5:
SELECT *
FROM cats
WHERE cat_id=age;
-- Answer #6:
UPDATE cats SET name="Jack" WHERE name="Jackson";
-- Answer 7:
UPDATE cats SET breed="British Shorthair" WHERE name="Ringo";
-- Answer 8:
UPDATE cats SET age=12 WHERE breed="Maine Coon";
-- Answer 9:
DELETE FROM cats WHERE age=4;
-- Answer 10:
DELETE FROM cats WHERE age=cat_id;
-- Answer 11:
DELETE FROM cats;
