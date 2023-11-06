CREATE TABLE students(
id SERIAL PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
class VARCHAR(10) NOT NULL,
section VARCHAR(10) NOT NULL
);

INSERT INTO students (student_name, class, section) VALUES
('JIM','10','A'),
('REEN','9','B'),
('ARJUN','11','C'),
('SURYA','10','B'),
('DIYA','9','A'),
('PRIYA','11','B'),
('SNEHA','10','C'),
('SARAH','9','A'),
('SAM','11','A'),
('APRIL','10','B');


CREATE TABLE student_grade(
id SERIAL PRIMARY KEY,
student_id INTEGER REFERENCES students(id),
subject VARCHAR(50) NOT NULL,
grade VARCHAR(2) NOT NULL
);

INSERT INTO student_grade(student_id, subject, grade)VALUES

(1, 'CHEMISTRY', 'A'),
(1, 'PHYSICS', 'B'),
(1, 'BIOLOGY', 'F'),
(2, 'CHEMISTRY', 'B'),
(2, 'PHYSICS', 'F'),
(2, 'BIOLOGY', 'C'),
(3, 'CHEMISTRY', 'A'),
(3, 'PHYSICS', 'A'),
(3, 'BIOLOGY', 'A'),
(4, 'CHEMISTRY', 'B'),
(4, 'PHYSICS', 'F'),
(4, 'BIOLOGY', 'B'),
(5, 'CHEMISTRY', 'C'),
(5, 'PHYSICS', 'F'),
(5, 'BIOLOGY', 'A'),
(6, 'CHEMISTRY', 'B'),
(6, 'PHYSICS', 'B'),
(6, 'BIOLOGY', 'B'),
(7, 'CHEMISTRY', 'C'),
(7, 'PHYSICS', 'A'),
(7, 'BIOLOGY', 'A'),
(8, 'CHEMISTRY', 'F'),
(8, 'PHYSICS', 'B'),
(8, 'BIOLOGY', 'A'),
(9, 'CHEMISTRY', 'C'),
(9, 'PHYSICS', 'C'),
(9, 'BIOLOGY', 'F'),
(10, 'CHEMISTRY', 'F'),
(10, 'PHYSICS', 'A'),
(10, 'BIOLOGY', 'B');