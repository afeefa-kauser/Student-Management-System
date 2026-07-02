/* Display all students */

SELECT * FROM Students;


/* Students older than 20 */

SELECT * 
FROM Students
WHERE Age > 20;


/* Sort students by age */

SELECT * 
FROM Students
ORDER BY Age DESC;


/* Count total students */

SELECT COUNT(*) AS Total_Students
FROM Students;


/* Display unique departments */

SELECT DISTINCT Department
FROM Students;


/* Count students in each department */

SELECT Department, COUNT(*) AS Student_Count
FROM Students
GROUP BY Department;


/* Find students whose name starts with A */

SELECT *
FROM Students
WHERE Student_Name LIKE 'A%';


/* Update a student's department */

UPDATE Students
SET Department='AI & Data Science'
WHERE Student_ID=2;


/* Delete a student record */

DELETE FROM Students
WHERE Student_ID=3;


/* Show students with enrolled courses */

SELECT Students.Student_Name,
       Courses.Course_Name
FROM Students
INNER JOIN Enrollment
ON Students.Student_ID = Enrollment.Student_ID
INNER JOIN Courses
ON Courses.Course_ID = Enrollment.Course_ID;


/* Count students enrolled in each course */

SELECT Courses.Course_Name,
       COUNT(Enrollment.Student_ID) AS Total_Students
FROM Courses
INNER JOIN Enrollment
ON Courses.Course_ID = Enrollment.Course_ID
GROUP BY Courses.Course_Name;


/* Find the oldest student */

SELECT *
FROM Students
WHERE Age = (
    SELECT MAX(Age)
    FROM Students
);


/* Find students not enrolled in any course */

SELECT Student_Name
FROM Students
WHERE Student_ID NOT IN
(
    SELECT Student_ID
    FROM Enrollment
);


/* Display student names and email domains */

SELECT Student_Name,
SUBSTRING(Email, LOCATE('@', Email)+1) AS Email_Domain
FROM Students;

/*join*/

SELECT Students.Student_Name, Courses.Course_Name
FROM Students
INNER JOIN Enrollment
ON Students.Student_ID=Enrollment.Student_ID
INNER JOIN Courses
ON Courses.Course_ID=Enrollment.Course_ID;
