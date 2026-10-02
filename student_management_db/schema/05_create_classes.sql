CREATE TABLE classes (
  class_id SERIAL PRIMARY KEY,
  course_id INTEGER NOT NULL REFERENCES courses(course_id),
  instructor_id INTEGER REFERENCES instructors(instructor_id),
  semester varchar(200) NOT NULL,
  year INTEGER NOT NULL,
  schedule varchar(100),
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT valid_year CHECK (year >= 2000 AND year <= 2100)
);
