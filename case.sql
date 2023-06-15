CREATE TABLE Courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(255),
  course_description VARCHAR(255),
  instructor_id INT,
  FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);

-------Students table---------
CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(255),
  email VARCHAR(255),
  phone_number VARCHAR(20)
);

--Enrollments table---------
CREATE TABLE Enrollments (
  enrollment_id INT PRIMARY KEY,
  e_student_id INT,
  e_course_id INT,
  enrollment_date DATE,
  FOREIGN KEY (student_id) REFERENCES Students(student_id),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

------CourseModules table-------
CREATE TABLE CourseModules (
  module_id INT PRIMARY KEY,
  course_id INT,
  module_name VARCHAR(255),
  module_description VARCHAR(255),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

---------Progress table------------
CREATE TABLE Progress_DATA (
  progress_id INT PRIMARY KEY ,
  P_enrollment_id INT,
  P_module_id INT,
  is_completed varchar(6),
  FOREIGN KEY (p_enrollment_id) REFERENCES Enrollments(enrollment_id),
  FOREIGN KEY (p_module_id) REFERENCES CourseModules(module_id)
);

-------Instructors table---------
CREATE TABLE Instructors (
  instructor_id INT PRIMARY KEY,
  instructor_name VARCHAR(255),
  email VARCHAR(255),
  phone_number VARCHAR(20)
);
------------iNSERTING IN COURSES---------
-- Inserting records into the Courses table
--
INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (1, 'Introduction to Programming', 'Learn the basics of programming', 101);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (2, 'Web Development', 'Build dynamic websites using HTML, CSS, and JavaScript', 102);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (3, 'Data Science Fundamentals', 'Explore the world of data science and analytics', 103);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (4, 'Mobile App Development', 'Create mobile apps for iOS and Android platforms', 104);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (5, 'Database Management', 'Master the art of managing and querying databases', 105);
-- Inserting additional records into the Courses table
INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (6, 'Artificial Intelligence', 'Discover the concepts and applications of AI', 106);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (7, 'Digital Marketing', 'Learn strategies for effective online marketing', 107);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (8, 'Cybersecurity Fundamentals', 'Explore the essentials of cybersecurity', 108);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (9, 'Graphic Design for Beginners', 'Master the basics of graphic design', 109);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (10, 'Project Management Principles', 'Develop skills for successful project management', 110);
--*********************************************************************************************************************
--*****************************************************************************************************
 
INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (101, 'John Smith', 'johnsmith@example.com', '123-456-7890');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (102, 'Jane Doe', 'janedoe@example.com', '987-654-3210');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (103, 'Michael Johnson', 'michaeljohnson@example.com', '555-1234');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (104, 'Emily Davis', 'emilydavis@example.com', '777-888-9999');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (105, 'David Wilson', 'davidwilson@example.com', '444-555-6666');
 
INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (106, 'Sarah Anderson', 'sarahanderson@example.com', '111-222-3333');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (107, 'Robert Garcia', 'robertgarcia@example.com', '444-333-2222');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (108, 'Michelle Lee', 'michellelee@example.com', '777-999-8888');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (109, 'Daniel Thompson', 'danielthompson@example.com', '555-666-7777');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (110, 'Jennifer Moore', 'jennifermoore@example.com', '888-777-6666');
--*******************************************************************************
--*******************************************************************************
/
--INSERTIG INTO STUDENTS----------
-- Inserting records into the Students table
INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1001, 'John Smith', 'johnsmith@example.com', '123-456-7890');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1002, 'Jane Doe', 'janedoe@example.com', '987-654-3210');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1003, 'Michael Johnson', 'michaeljohnson@example.com', '555-1234');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1004, 'Emily Davis', 'emilydavis@example.com', '777-888-9999');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1005, 'David Wilson', 'davidwilson@example.com', '444-555-6666');
-- Inserting additional records into the Students table
INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1006, 'Sarah Anderson', 'sarahanderson@example.com', '111-222-3333');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1007, 'Robert Garcia', 'robertgarcia@example.com', '444-333-2222');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1008, 'Michelle Lee', 'michellelee@example.com', '777-999-8888');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1009, 'Daniel Thompson', 'danielthompson@example.com', '555-666-7777');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1010, 'Jennifer Moore', 'jennifermoore@example.com', '888-777-6666');
------------------------****************************--------------------
--INERTING INTO ENROLLMENT TABLE
-- Inserting records into the Enrollments table
INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2001, 1001, 1, TO_DATE('2023-01-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2002, 1002, 2, TO_DATE('2023-02-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2003, 1003, 3, TO_DATE('2023-03-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2004, 1004, 4, TO_DATE('2023-04-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2005, 1005, 5, TO_DATE('2023-05-01', 'YYYY-MM-DD'));
-- Inserting additional records into the Enrollments table
INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2006, 1006, 6, TO_DATE('2023-06-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2007, 1007, 7, TO_DATE('2023-07-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2008, 1008, 8, TO_DATE('2023-08-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2009, 1009, 9, TO_DATE('2023-09-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2010, 1010, 10, TO_DATE('2023-10-01', 'YYYY-MM-DD'));
--------------------------Course module table----------
-- Inserting records into the CourseModules table
INSERT INTO CourseModules (module_id, c_course_id, module_name, module_description)
VALUES (3001, 1, 'Introduction to Programming Concepts', 'Learn the fundamental concepts of programming');

INSERT INTO CourseModules (module_id, c_course_id, module_name, module_description)
VALUES (3002, 1, 'Variables and Data Types', 'Explore different types of variables and data in programming');

INSERT INTO CourseModules (module_id, c_course_id, module_name, module_description)
VALUES (3003, 2, 'HTML Basics', 'Get started with HTML tags and structure');

INSERT INTO CourseModules (module_id, c_course_id, module_name, module_description)
VALUES (3004, 2, 'CSS Styling', 'Learn how to style web pages using CSS');

INSERT INTO CourseModules (module_id, c_course_id, module_name, module_description)
VALUES (3005, 3, 'Introduction to Data Science', 'Discover the basics of data science and its applications');


-- Inserting records into the Progress table
-- Inserting records into the Progress table
INSERT INTO Progress_DATA (progress_id, p_enrollment_id, p_module_id, is_completed)
VALUES (4001, 2001, 3001, 'YES');

INSERT INTO Progress_DATA (progress_id, p_enrollment_id, p_module_id, is_completed)
VALUES (4002, 2001, 3002, 'YES');

INSERT INTO Progress_DATA (progress_id, p_enrollment_id, p_module_id, is_completed)
VALUES (4003, 2002, 3003, 'YES');

INSERT INTO Progress_DATA (progress_id, p_enrollment_id, p_module_id, is_completed)
VALUES (4004, 2002, 3004, 'NO');

INSERT INTO Progress_DATA (progress_id, p_enrollment_id, p_module_id, is_completed)
VALUES (4005, 2003, 3005, 'YES');

 
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE create_course_module(
  course_id in INT,
  module_name in Coursemodules.module_name%type,
  MODULE_DESCRIPTION in Coursemodules.MODULE_DESCRIPTION%type
) AS
  module_id INT;
BEGIN
  SELECT MAX(module_id) INTO module_id FROM CourseModules;
  module_id := module_id + 1;
  
  INSERT INTO CourseModules(module_id, c_course_id, module_name, MODULE_DESCRIPTION)
  VALUES(module_id, course_id, module_name, MODULE_DESCRIPTION);
  
  DBMS_OUTPUT.PUT_LINE('Course module created successfully. Module ID: ' || module_id);
END;

EXECUTE create_course_module(5,'Database Management','Master the art of managing and querying databases');
--SELECT module_name,Module_description into module_name,Module_description from Courses where course_id=course_id limit1;--------------------------------------------------------------------------------------
 
 

 
 
  
-----------------------------------------------------------
CREATE OR REPLACE FUNCTION generate_completion_certificate(
  enrollment_id INT
) RETURN VARCHAR AS
  student_name VARCHAR(100);
  course_name VARCHAR(100);
  completion_certificate VARCHAR(500);
BEGIN
  FOR rec IN (
    SELECT Students.student_name, Courses.course_name, Progress_DATA.is_completed
    FROM Students
    INNER JOIN Enrollments ON Students.student_id = Enrollments.e_student_id
    INNER JOIN Courses ON Enrollments.e_course_id = Courses.course_id
    INNER JOIN Progress_DATA ON Enrollments.enrollment_id = Progress_DATA.P_enrollment_id
    WHERE Enrollments.enrollment_id = enrollment_id
  ) LOOP
    student_name := rec.student_name;
    course_name := rec.course_name;
    
    IF rec.is_completed = 'YES' THEN
      completion_certificate := 'This is to certify that ' || student_name || ' has successfully completed the course ' || course_name || '.';
    ELSE
      completion_certificate := 'This is to inform ' || student_name || ' that completion of the course ' || course_name || ' is pending.';
    END IF;
    
    -- Additional code to handle the completion certificate for each row
    -- You can perform any other operations or store the completion certificates as needed
    
    -- Print or use the completion certificate for each row
    DBMS_OUTPUT.PUT_LINE(completion_certificate);
  END LOOP;
  
  RETURN completion_certificate;
END;


 set serveroutput on;
declare
begin
 
dbms_output.put_line(generate_completion_certificate(2004));
end;
     




SELECT * FROM COURSES;
sELECT * FROM INSTRUCTORS;
SELECT * FROM STUDENTS;
SELECT * FROM progress_data;
select * from coursemodules;
select * from enrollments;

