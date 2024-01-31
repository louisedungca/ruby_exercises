-- Create a new table: students
CREATE TABLE students (
    id integer PRIMARY KEY,
    first_name character varying(100) NOT NULL,
    middle_name character varying(100) NULL,
    last_name character varying(100) NOT NULL,
    age integer DEFAULT 0,
    location character varying(100) NOT NULL
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


-- PART 2 --
-- Create new table research_papers with the following columns: id - primary key, student_id - foreign key, grade - grades can be 'A', 'B', 'C', 'D', 'E', 'F', or NULL

CREATE TABLE research_papers (
  id integer PRIMARY KEY,
  student_id integer NOT NULL,
  grade character varying(1) CHECK (grade IN ('A', 'B', 'C', 'D', 'E', 'F', NULL)),
  FOREIGN KEY (student_id) REFERENCES students(id)
);

-- Insert 10 records to the new table (2 students should have more than 1 research paper AND 2 students should have 1 ungraded (NULL) research paper)
INSERT INTO research_papers (id, student_id, grade)
VALUES
  (1, 1, 'A'),
  (2, 2, 'B'),
  (3, 3, NULL),
  (4, 4, 'A'),
  (5, 5, 'C'),
  (6, 1, 'A'),
  (7, 1, NULL),
  (8, 2, 'D'),
  (9, 3, 'E'),
  (10, 2, 'B');


SELECT s.id, s.first_name, s.last_name, r.id, r.grade 
FROM students s
JOIN research_papers r
ON s.id = r.student_id;

-- Query all students with multiple research papers (select first_name, last_name, and number_of_research_papers only)
SELECT s.first_name, s.last_name, COUNT(r.id)
FROM students s
JOIN research_papers r
ON s.id = r.student_id
GROUP BY s.first_name, s.last_name, s.id
HAVING COUNT(r.id) > 1;

-- Query all students with ungraded research papers (select first_name, last_name, research_paper_id, and grade only)
SELECT s.first_name, s.last_name, r.id, r.grade
FROM students s
JOIN research_papers r
ON s.id = r.student_id
WHERE r.grade IS NULL;