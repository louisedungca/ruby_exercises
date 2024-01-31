-- Create new table: Table name: classrooms Columns: id, student_id, section
CREATE table classrooms (
    id integer PRIMARY KEY,
    student_id integer NOT NULL,
    section character varying(30) NOT NULL,
    --FOREIGN KEY (student_id) REFERENCES students(id)
);

-- Insert 10 records
INSERT INTO classrooms (id, student_id, section)
VALUES
    (1, 1, 'A'),
    (2, 2, 'B'),
    (3, 3, 'A'),
    (4, 4, 'C'),
    (5, 5, 'B'),
    (6, 6, 'A'),
    (7, 7, 'C'),
    (8, 8, 'B'),
    (9, 9, 'B'),
    (10, 10, 'C');

-- QUERY database --
SELECT * FROM students;
SELECT * FROM classrooms;

-- Combine the two tables, students and classrooms, using inner join, left join, right join and full join.
SELECT * FROM students s
JOIN classrooms c 
ON s.id = c.student_id;

SELECT * FROM students s
LEFT JOIN classrooms c
ON s.id = c.student_id;

SELECT * FROM students s
RIGHT JOIN classrooms c 
ON s.id = c.student_id;

SELECT * FROM students s
FULL JOIN classrooms c
ON s.id = c.student_id;