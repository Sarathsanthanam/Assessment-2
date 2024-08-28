CREATE TABLE Participants (
    ParticipantID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    MiddleName NVARCHAR(50),
    DateOfBirth DATE,
    Email NVARCHAR(100),
    Gender CHAR(1),
    PersonalPhone NVARCHAR(15)
);

CREATE TABLE Camps (
    CampID INT IDENTITY(1,1) PRIMARY KEY,
    CampTitle NVARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Price DECIMAL(10, 2),
    Capacity INT
);

CREATE TABLE Attendance (
    AttendanceID INT IDENTITY(1,1) PRIMARY KEY,
    ParticipantID INT FOREIGN KEY REFERENCES Participants(ParticipantID),
    CampID INT FOREIGN KEY REFERENCES Camps(CampID),
    VisitDate DATE
);


Query for Lakshmi visitting Last 3 years

SELECT COUNT(*) AS VisitCount
FROM Attendance A
JOIN Participants P ON A.ParticipantID = P.ParticipantID
WHERE P.FirstName = 'Lakshmi'
  AND DATEDIFF(YEAR, A.VisitDate, GETDATE()) <= 3;
