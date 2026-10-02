CREATE TABLE students (
  student_id SERIAL PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(100) UNIQUE NOT NULL,
  phone varchar(20),
  date_of_birth date,
  enrolment_date date DEFAULT CURRENT_DATE,
  department_id INTEGER REFERENCES DEPARTMENTS(DEPARTMENT_ID),
  is_active boolean DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

)
