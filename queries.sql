-- List all students with the courses they are enrolled in
SELECT s.name AS student, c.title AS course, e.semester, e.grade
FROM enrollment e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;

-- Show average grade per course (note: letter grades would need conversion to numeric to average properly)
-- Placeholder if you use numeric grades:
-- SELECT c.title, AVG(e.grade) FROM enrollment e JOIN courses c ON e.course_id = c.course_id GROUP BY c.title;

-- List all instructors and the courses they teach
SELECT i.name AS instructor, c.title AS course, t.semester
FROM teaches t
JOIN instructors i ON t.instructor_id = i.instructor_id
JOIN courses c ON t.course_id = c.course_id;
