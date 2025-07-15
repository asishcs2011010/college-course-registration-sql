-- Insert students
INSERT INTO students (name, email, batch)
VALUES 
  ('Alice', 'alice@example.com', '2025'),
  ('Bob', 'bob@example.com', '2025'),
  ('Charlie', 'charlie@example.com', '2024');

-- Insert courses
INSERT INTO courses (title, credits, department)
VALUES
  ('Database Systems', 4, 'CS'),
  ('Algorithms', 3, 'CS'),
  ('Operating Systems', 4, 'CS');

-- Insert instructors
INSERT INTO instructors (name, email, department)
VALUES
  ('Dr. Smith', 'smith@university.edu', 'CS'),
  ('Dr. Johnson', 'johnson@university.edu', 'CS');

-- Insert teaches
INSERT INTO teaches (instructor_id, course_id, semester)
VALUES
  (1, 1, 'Fall2025'),
  (2, 2, 'Fall2025');

-- Insert enrollments
INSERT INTO enrollment (student_id, course_id, semester, grade)
VALUES
  (1, 1, 'Fall2025', 'A'),
  (2, 1, 'Fall2025', 'B'),
  (3, 2, 'Fall2025', 'A');
