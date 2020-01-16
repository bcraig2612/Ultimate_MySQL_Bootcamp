SELECT
    first_name,
    IFNULL(title, 'MISSING'),
    IFNULL(grade, 0)
FROM students
    LEFT JOIN papers
    ON students.id = papers.student_id;