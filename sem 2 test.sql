-- CREATE DATABASE my_test2;
-- USE my_test2;

-- Create Finance table
CREATE TABLE Finance (
    StudentID int,
    Tuition_Fee int,
    Administration_Fee int,
    Exams_Fee int,
    Medical_Fee int
);

-- Insert data into Finance table
INSERT INTO Finance (StudentID, Tuition_Fee, Administration_Fee, Exams_Fee, Medical_Fee)
VALUES 
    (235, 30000, 5000, 3000, 4000),
    (26, 40000, 5000, 2000, 4000),
    (1, 3400, 5000, 3000, 4000),
    (2, 23000, 5000, 3000, 4000),
    (3, 20000, 5000, 3000, 4000),
    (29, 35000, 5000, 2000, 4000),
    (127, 2800, 5000, 3000, 4000);

-- Create Student table inorder to display data of students
CREATE TABLE Student(
    StudentName varchar(255),
    StudentID int,
    Birthdate date,
    Year varchar(10),
    MobileNo varchar(15)
);

-- Insert data into the student table
INSERT INTO Student (StudentName, StudentID, Birthdate, Year, MobileNo)
VALUES
    ('Jane', 235, '1987-12-01', 'Y1S2', '0722245321'),
    ('Nicholas', 26, '2002-07-22', 'Y1S1', '0720458674'),
    ('Cyrus', 1, '1989-06-15', 'Y1S1', '0704231345'),
    ('Neema', 2, '2008-11-29', 'Y1S1', '0723386987'),
    ('Caroline', 3, '2002-10-18', 'Y1S1', '0732568448'),
    ('Judith', 29, '2003-06-17', 'Y1S2', '0711234567'),
    ('Grace', 127, '2000-01-14', 'Y1S2', '0733765987');

-- ii
--  Extract students with tuition paid and in year Y1S1
SELECT StudentName, Tuition_Fee
FROM Finance 
WHERE Year = 'Y1S1' AND Tuition_Fee > 0;

-- iii
--  Display students with tuition >= 30000
SELECT StudentName, StudentID, Year,Tuition_Fee
FROM Finance 
WHERE Tuition_Fee >= 30000;

-- iv
--  Insert a new student to the database
INSERT INTO Student (StudentName, Birthdate, Year, MobileNo)
VALUES ('Dan', '2001-04-20', 'Y1S2', '0723456123');

-- v
 -- Update a student name with StudentID = 26-- 
UPDATE Student
SET StudentName = 'Nelson'
WHERE StudentID = 26;

-- vi
 -- Showing max and min tuition fees of students
SELECT
    MAX(Tuition_Fee) AS 'Highest Amount',
    MIN(Tuition_Fee) AS 'Lowest Amount'
FROM Finance;
