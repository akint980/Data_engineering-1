CREATE TABLE courses (
  course_id SERIAL PRIMARY KEY,
  course_code varchar(20) UNIQUE NOT NULL,
  name varchar(100) NOT NULL,
  description text,
  credits INTEGER CHECK (credits > 0 AND credits <= 6),
  department_id INTEGER REFERENCES departments(department_id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);
