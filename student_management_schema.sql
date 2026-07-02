CREATE TABLE Students(
Student_ID INT PRIMARY KEY,
Student_Name VARCHAR(50),
Age INT,
Department VARCHAR(50),
Email VARCHAR(100)
);

CREATE TABLE Courses(
Course_ID INT PRIMARY KEY,
Course_Name VARCHAR(50)
);

CREATE TABLE Enrollment(
Enrollment_ID INT PRIMARY KEY,
Student_ID INT,
Course_ID INT,
FOREIGN KEY(Student_ID) REFERENCES Students(Student_ID),
FOREIGN KEY(Course_ID) REFERENCES Courses(Course_ID)
);
