CREATE TABLE schools (
  id INTEGER PRIMARY KEY AUTOINCREMENT
  , name TEXT
  , rating REAL
  , year_established INTEGER);

CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT
  , name TEXT
  , school_id INTEGER REFERENCES schools);

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT
  , name TEXT
  , age INTEGER);

CREATE TABLE enrollments (
  id INTEGER PRIMARY KEY AUTOINCREMENT
  , student_id INTEGER REFERENCES students
  , course_id INTEGER REFERENCES courses);