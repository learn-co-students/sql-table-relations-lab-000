CREATE TABLE schools(
    name TEXT,
    rating INTEGER,
    year_established INTEGER,
    id INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE courses(
    name TEXT,
    school_id INTEGER REFERENCES schools,
    id INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE students(
    name TEXT,
    age INTEGER,
    id INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE enrollments(
    student_id INTEGER REFERENCES students,
    course_id INTEGER REFERENCES courses,
    id INTEGER PRIMARY KEY AUTOINCREMENT
);
