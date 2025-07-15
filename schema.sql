-- Drop tables if they already exist (for fresh setup)
DROP TABLE IF EXISTS enrollment CASCADE;
DROP TABLE IF EXISTS teaches CASCADE;
DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS courses CASCADE;
DROP TABLE IF EXISTS instructors CASCADE;

-- =========================================
-- TABLE: students
-- =========================================
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    batch VARCHAR(20)
);
COMMENT ON TABLE students IS 'Stores student information';
COMMENT ON COLUMN students.email IS 'Unique student email';

-- =========================================
-- TABLE: courses
-- =========================================
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    credits INTEGER NOT NULL CHECK (credits > 0),
    department VARCHAR(50)
);
COMMENT ON TABLE courses IS 'Course catalog';

-- =========================================
-- TABLE: instructors
-- =========================================
CREATE TABLE instructors (
    instructor_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(50)
);
COMMENT ON TABLE instructors IS 'Instructor details';

-- =========================================
-- TABLE: enrollment (students ↔ courses)
-- =========================================
CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(student_id) ON DELETE CASCADE,
    course_id INTEGER REFERENCES courses(course_id) ON DELETE CASCADE,
    semester VARCHAR(10) NOT NULL,
    grade VARCHAR(2),
    UNIQUE (student_id, course_id, semester)
);
COMMENT ON TABLE enrollment IS 'Stores course enrollments and grades per student per semester';

-- =========================================
-- TABLE: teaches (instructors ↔ courses)
-- =========================================
CREATE TABLE teaches (
    instructor_id INTEGER REFERENCES instructors(instructor_id) ON DELETE CASCADE,
    course_id INTEGER REFERENCES courses(course_id) ON DELETE CASCADE,
    semester VARCHAR(10) NOT NULL,
    PRIMARY KEY (instructor_id, course_id, semester)
);
COMMENT ON TABLE teaches IS 'Stores which instructor teaches which course in which semester';
