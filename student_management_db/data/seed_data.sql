-- Departments
INSERT INTO departments (department_id, name, building) VALUES
(1, 'Computer Science', 'Tech Building A'),
(2, 'Mathematics', 'Science Hall'),
(3, 'Physics', 'Newton Center'),
(4, 'Business Administration', 'Commerce Block'),
(5, 'English', 'Humanities Building');
 
-- Students
INSERT INTO students
(student_id, first_name, last_name, email, phone, date_of_birth, enrolment_date, department_id, is_active)
VALUES
(1, 'John', 'Smith', 'john.smith@student.edu', '555-1001', '2002-03-15', '2023-08-15', 1, true),
(2, 'Emma', 'Johnson', 'emma.johnson@student.edu', '555-1002', '2001-11-22', '2022-08-15', 2, true),
(3, 'Michael', 'Brown', 'michael.brown@student.edu', '555-1003', '2003-01-10', '2024-01-10', 1, true),
(4, 'Sophia', 'Davis', 'sophia.davis@student.edu', '555-1004', '2002-07-18', '2023-08-15', 3, true),
(5, 'Daniel', 'Wilson', 'daniel.wilson@student.edu', '555-1005', '2001-09-05', '2022-08-15', 4, true),
(6, 'Olivia', 'Taylor', 'olivia.taylor@student.edu', '555-1006', '2003-04-12', '2024-01-10', 5, true),
(7, 'James', 'Anderson', 'james.anderson@student.edu', '555-1007', '2002-12-30', '2023-08-15', 2, true),
(8, 'Ava', 'Martin', 'ava.martin@student.edu', '555-1008', '2004-02-08', '2024-08-15', 1, true);
 
-- Instructors
INSERT INTO instructors
(instructor_id, first_name, last_name, email, phone, date_of_birth, hire_date, salary, department_id)
VALUES
(1, 'Alan', 'Turing', 'alan.turing@university.edu', '555-2001', '1980-06-23', '2015-09-01', 95000.00, 1),
(2, 'Katherine', 'Johnson', 'k.johnson@university.edu', '555-2002', '1978-08-26', '2012-08-15', 92000.00, 2),
(3, 'Albert', 'Einstein', 'a.einstein@university.edu', '555-2003', '1975-03-14', '2010-07-01', 110000.00, 3),
(4, 'Peter', 'Drucker', 'p.drucker@university.edu', '555-2004', '1972-11-19', '2008-01-15', 98000.00, 4),
(5, 'William', 'Shakespeare', 'w.shakespeare@university.edu', '555-2005', '1970-04-23', '2005-09-01', 102000.00, 5);
 
-- Courses
INSERT INTO courses
(course_id, course_code, name, description, credits, department_id)
VALUES
(1, 'CS101', 'Introduction to Programming', 'Basic programming concepts using Python', 3, 1),
(2, 'CS201', 'Database Systems', 'Relational database design and SQL', 4, 1),
(3, 'MATH101', 'Calculus I', 'Limits, derivatives and integration', 4, 2),
(4, 'PHYS101', 'General Physics', 'Mechanics and thermodynamics', 4, 3),
(5, 'BUS101', 'Principles of Management', 'Introduction to business management', 3, 4),
(6, 'ENG101', 'Academic Writing', 'College-level writing skills', 3, 5);
 
-- Classes
INSERT INTO classes
(class_id, course_id, instructor_id, semester, schedule)
VALUES
(1, 1, 1, 'Fall 2026', 'Mon-Wed 09:00-10:30'),
(2, 2, 1, 'Fall 2026', 'Tue-Thu 11:00-12:30'),
(3, 3, 2, 'Fall 2026', 'Mon-Wed-Fri 10:00-11:00'),
(4, 4, 3, 'Fall 2026', 'Tue-Thu 14:00-15:30'),
(5, 5, 4, 'Fall 2026', 'Wed-Fri 13:00-14:30'),
(6, 6, 5, 'Fall 2026', 'Mon-Wed 15:00-16:30');
 
-- Enrollments
-- Assuming student_id should reference students.student_id
INSERT INTO enrollments
(enrollment_id, student_id, class_id, grade)
VALUES
(1, 1, 1, 'A'),
(2, 1, 2, 'B+'),
(3, 2, 3, 'A-'),
(4, 3, 1, 'B'),
(5, 3, 2, 'A'),
(6, 4, 4, 'A'),
(7, 5, 5, 'B+'),
(8, 6, 6, 'A-'),
(9, 7, 3, 'B'),
(10, 8, 1, 'A'),
(11, 8, 2, 'A-');