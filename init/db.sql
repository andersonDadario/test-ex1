CREATE DATABASE testdb;

USE testdb;

CREATE TABLE IF NOT EXISTS colleges (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    collegeId INTEGER REFERENCES colleges(id)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS rankings (
    studentId INTEGER REFERENCES students(id),
    ranking INTEGER NOT NULL,
    year INTEGER NOT NULL
)  ENGINE=INNODB;

INSERT INTO colleges (name) VALUES
    ('uni1'),
    ('uni2'),
    ('uni3'),
    ('uni4'),
    ('uni5');

INSERT INTO students (name, collegeId) VALUES
    ('student1', 1),
    ('student2', 1),
    ('student3', 2),
    ('student4', 2),
    ('student5', 3),
    ('student6', 3),
    ('student7', 4),
    ('student8', 4),
    ('student9', 5),
    ('student10', 5);

INSERT INTO rankings (studentId, ranking, year) VALUES
    (1, 1, 2015),
    (2, 2, 2015),
    (3, 3, 2015),
    (4, 4, 2015),
    (5, 5, 2015),
    (6, 3, 2015),
    (7, 4, 2016);