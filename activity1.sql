-- Create a new table: students
CREATE TABLE students (
    id             integer                     PRIMARY KEY,
    first_name     character varying(100)         NOT NULL,
    middle_name    character varying(100)         NULL,
    last_name     	character varying(100)        NOT NULL,
    age             integer                			  DEFAULT 0,
    location        character varying(100)        NOT NULL
);

-- Add columns: id, first_name, middle_name, last_name, age, location
-- Insert 6 records
INSERT INTO students (id, first_name, last_name, age, location) 
VALUES  (1, 'Juan', 'Cruz', 18,'Manila'),
        (2, 'Anne', 'Wall', 20, 'Manila'),
        (3, 'Theresa', 'Joseph', 21, 'Manila'),
        (4, 'Isaac', 'Gray', 19, 'Laguna'),
        (5, 'Zack', 'Matthews', 22,'Marikina'),
        (6, 'Finn', 'Lam', 25, 'Manila');

-- Update first record: first_name: Ivan, middle_name: Ingram, last_name: Howard, age: 25, location: Bulacan
UPDATE students
SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan'
WHERE id = 1;

-- Delete last record
DELETE FROM students
WHERE id = (SELECT id FROM students ORDER BY id DESC LIMIT 1);

-- Display the count of all students
SELECT COUNT(*) from students;

-- Select all students with location is Manila
SELECT * FROM students
WHERE location = 'Manila';

-- Display the average age of all students 
SELECT AVG(age) from students;

-- Display all students by age descending order
SELECT * FROM students
ORDER BY age DESC;


-- for checking table
SELECT * from students;