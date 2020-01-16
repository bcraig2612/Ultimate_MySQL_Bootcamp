SELECT first_name, title, grade
FROM students
    INNER JOIN papers
    ON students.id = papers.student_id
ORDER BY grade DESC;

-- ALTERNATE SOLUTION:
SELECT first_name, title, grade
FROM students
    RIGHT JOIN papers
    ON students.id = papers.student_id
ORDER BY grade DESC;