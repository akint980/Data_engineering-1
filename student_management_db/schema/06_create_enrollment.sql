CREATE TABLE enrollments (
  enrollment_id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students(student_id),
  class_id INTEGER NOT NULL REFERENCES classes(class_id) ON DELETE CASCADE,
  enrollment_date DATE DEFAULT CURRENT_DATE,
  grade varchar(2),
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT unique_enrollment UNIQUE (student_id, class_id)
);
