CREATE TABLE student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255)
);

ALTER TABLE school_mgt RENAME TO student;

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO student VALUES(
1,
'SHARAN',
'KUMAR',
'24/09/1995',
'sharankumar78@gmail.com',
'7034527809',
'NEAR HILITE MALL'
);

INSERT INTO student VALUES(
1,
'SHARAN',
'KUMAR',
'24/09/1995',
'sharankumar78@gmail.com',
'7034527809',
'NEAR HILITE MALL'
);

INSERT INTO student VALUES(
1,
'SHARAN',
'KUMAR',
'24/09/1995',
'sharankumar78@gmail.com',
'7034527809',
'NEAR HILITE MALL'
);

INSERT INTO student VALUES(
1,
'SHARAN',
'KUMAR',
'24/09/1995',
'sharankumar78@gmail.com',
'7034527809',
'NEAR HILITE MALL'
);

ALTER TABLE student ADD CONSTRAINT email UNIQUE(email);

ALTER TABLE student
ALTER COLUMN first_name SET NOT NULL,
ALTER COLUMN last_name SET NOT NULL;

ALTER TABLE Enrollments
ADD CONSTRAINT FK_Enrollments_Students
FOREIGN KEY (student_id) REFERENCES student(student_id);

ALTER TABLE student
ADD CONSTRAINT CheckDateOfBirth
CHECK (date_of_birth <= CURRENT_DATE);

ALTER TABLE student 
ALTER COLUMN phone_number TYPE VARCHAR(15);

