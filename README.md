# 📊 college-course-registration-sql

This project contains an **ER diagram** and **SQL schema** for a simple college course registration system.

It demonstrates:
- Database design with proper constraints
- SQL `CREATE TABLE` scripts
- Use of primary keys, foreign keys, unique constraints

---

## 🧰 **Tables included**
- `students` – stores student details
- `courses` – course catalog
- `instructors` – instructors teaching the courses
- `enrollment` – students enrolled in courses + grades
- `teaches` – which instructors teach which courses in which semester

---

## 📦 **Files**
| File | Description |
|--|--|
| `ER_DIAGRAM.png` | ER diagram of the database |
| `schema.sql` | SQL script to create tables and constraints |

---

## 🛠 **Features**
✅ Students enroll in courses  
✅ Courses taught by instructors  
✅ Store grades per student per course  
✅ Proper constraints for data integrity

---

## ⚡ **How to use**
1. Create a PostgreSQL database (e.g., `college`)
2. Run:
```bash
psql -d college -f schema.sql
