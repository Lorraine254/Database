-- Create a school database --
-- CREATE DATABASE school;

/*
1. Write use command to tell
 engine which database to work with
 2. Create student table to hold student records
*/

-- USE school;
-- CREATE TABLE student(
-- student_id INT PRIMARY KEY auto_increment,
-- FirstName VARCHAR(50),
-- age INT 
-- );

-- Task table
-- CREATE TABLE tasks (
-- id INT PRIMARY KEY,
-- title VARCHAR(255) NOT NULL,
-- start_date DATE,
-- due_date DATE 
-- );

-- Insert data
-- INSERT INTO tasks(id ,title, start_date,due_date)
-- VALUES(1,"Thursday","2025-02-11","2026-01-10");

-- Fetch data
-- SELECT * FROM tasks;

-- Customers table
CREATE TABLE customers (
    id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    address TEXT,
    date_of_birth DATE,
    signup_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM customers;

INSERT INTO customers (name, email, phone, address, date_of_birth)
VALUES
('Alice', 'alice.kimani@example.com', '+254723478', 'Nairobi', '1995-08-10');

INSERT INTO customers (name, email, phone, address, date_of_birth)
VALUES
('Brian', 'brian.otieno@example.com', '+2548765432', 'Kisumu', '1990-02-25');

INSERT INTO customers (name, email, phone, address, date_of_birth)
VALUES
('Carol', 'carol.wanjiku@example.com', '+25434567', 'Mombasa', '1988-12-15');

-- Altering(add column)
ALTER TABLE customers
ADD COLUMN paid BOOLEAN DEFAULT FALSE;

-- Dropping a column
ALTER TABLE customers
DROP COLUMN paid;

RENAME TABLE student TO staff;

-- Truncate -->delete all rows

SELECT * FROM customers;

DROP TABLE customers;

UPDATE tasks
SET title="Friday"
where id=1;
SELECT * FROM tasks;








