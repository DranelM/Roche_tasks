-- Database: students

-- DROP DATABASE students;

CREATE DATABASE students
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Polish_Poland.1250'
    LC_CTYPE = 'Polish_Poland.1250'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE TABLE IF NOT EXISTS students (
	student_id integer PRIMARY KEY,
	name text NOT NULL,
	surname text NOT NULL,
	birth_date text,
	faculty text NOT NULL);

CREATE TABLE IF NOT EXISTS class_catalogue (
        class_id integer PRIMARY KEY,
        class_name text NOT NULL,
        professor_id integer NOT NULL,
        semester text NOT NULL
    );
	
CREATE TABLE IF NOT EXISTS exam_results (
        student_id integer REFERENCES students(student_id),
        class_id integer REFERENCES class_catalogue(class_id),
        exam_date text,
        grade float NOT NULL
    );