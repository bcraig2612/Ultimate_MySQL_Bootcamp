SELECT first_name, title, grade
FROM students
    LEFT JOIN papers
    ON students.id = papers.student_id;