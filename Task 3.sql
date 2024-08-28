SELECT 
    CASE
        WHEN YEAR(DateOfBirth) BETWEEN 1965 AND 1980 THEN 'Gen X'
        WHEN YEAR(DateOfBirth) BETWEEN 1981 AND 1996 THEN 'Millennials'
        WHEN YEAR(DateOfBirth) BETWEEN 1997 AND 2012 THEN 'Gen Z'
        WHEN YEAR(DateOfBirth) >= 2013 THEN 'Gen Alpha'
        ELSE 'Other'
    END AS Generation,
    Gender,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Participants) AS Percentage
FROM Participants
GROUP BY Generation, Gender;
