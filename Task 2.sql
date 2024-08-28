CREATE TABLE People (
    PersonID INT IDENTITY(1,1) PRIMARY KEY,
    Gender VARCHAR(10),
    Age INT
);



INSERT INTO People (Gender, Age)
SELECT 'Girl', CASE 
    WHEN RAND() < 0.18 THEN FLOOR(RAND() * 6) + 7  
    WHEN RAND() < 0.45 THEN FLOOR(RAND() * 2) + 13 
    WHEN RAND() < 0.65 THEN FLOOR(RAND() * 3) + 15 
    ELSE FLOOR(RAND() * 2) + 18                  
END
FROM (SELECT TOP 3250 * FROM table_name) AS tmp;


INSERT INTO People (Gender, Age)
SELECT 'Boy', CASE 
    WHEN RAND() < 0.18 THEN FLOOR(RAND() * 6) + 7  
    WHEN RAND() < 0.45 THEN FLOOR(RAND() * 2) + 13 
    WHEN RAND() < 0.65 THEN FLOOR(RAND() * 3) + 15 
    ELSE FLOOR(RAND() * 2) + 18                   
END
FROM (SELECT TOP 1750 * FROM table_name) AS tmp;
