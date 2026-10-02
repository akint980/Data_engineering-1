CREATE TABLE instructors (
  instructor_id SERIAL PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(100) NOT NULL UNIQUE,
  phone varchar(20),
  date_of_birth date,
  hire_date date DEFAULT CURRENT_DATE,
  salary NUMERIC (10,2),
  department_id INTEGER REFERENCES departments(department_id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

)