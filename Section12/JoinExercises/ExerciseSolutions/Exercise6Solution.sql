SELECT
    first_name,
    IFNULL(AVG(grade), 0) AS average
FROM students
    LEFT JOIN papers
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;