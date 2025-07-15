
---

## ✅ `schema.sql`

```sql
-- Drop tables if they already exist (for fresh setup)
DROP TABLE IF EXISTS enrollment CASCADE;
DROP TABLE IF EXISTS teaches CASCADE;
DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS courses CASCADE;
DROP TABLE IF EXISTS instructors CASCADE;

-- Students table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    batch VARCHAR(20)
);

-- Courses table
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    credits INTEGER NOT NULL CHECK (credits > 0),
    department VARCHAR(50)
);

-- Instructors table
CREATE TABLE instructors (
    instructor_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(50)
);

-- Enrollment table (many-to-many: students ↔ courses)
CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(student_id) ON DELETE CASCADE,
    course_id INTEGER REFERENCES courses(course_id) ON DELETE CASCADE,
    semester VARCHAR(10) NOT NULL,
    grade VARCHAR(2)
);

-- Teaches table (many-to-many: instructors ↔ courses)
CREATE TABLE teaches (
    instructor_id INTEGER REFERENCES instructors(instructor_id) ON DELETE CASCADE,
    course_id INTEGER REFERENCES courses(course_id) ON DELETE CASCADE,
    semester VARCHAR(10) NOT NULL,
    PRIMARY KEY (instructor_id, course_id, semester)
);
