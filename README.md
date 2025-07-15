# 📊 college-course-registration-sql

This project contains an **ER diagram** and **SQL schema** for a simple college course registration system.

It demonstrates:
- Database design with proper constraints
- SQL `CREATE TABLE` scripts
- Use of primary keys, foreign keys, unique constraints

---

## 🧰 **Tables included**
- `students` – stores student details
- `courses` – list of courses offered
- `instructors` – instructors who teach courses
- `enrollment` – which students enroll in which courses + their grades
- `teaches` – which instructors teach which courses in which semester

---

## 📦 **Files**
| File             | Description                                     |
|------------------|-------------------------------------------------|
| `ER_DIAGRAM.png` | ER diagram showing the database relationships  |
| `schema.sql`     | SQL script to create tables and constraints    |

---

## 🛠 **Features**
✅ Students enroll in courses  
✅ Courses taught by instructors  
✅ Store grades per student per course  
✅ Proper constraints for data integrity (primary keys, foreign keys, unique emails, etc.)

---

## ⚡ **How to use**

```bash
# Create database (if not exists)
createdb college_registration

# Create tables
psql -d college_registration -f schema.sql

# Insert sample data
psql -d college_registration -f insert_sample_data.sql

# Try sample queries
psql -d college_registration -f queries.sql
