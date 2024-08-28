
CREATE TABLE IF NOT EXISTS people (
    id INT AUTO_INCREMENT PRIMARY KEY,
    gender VARCHAR(10),
    age INT
);


INSERT INTO people (gender, age)
SELECT 
    IF(RAND() <= 0.65, 'Girl', 'Boy') AS gender,
    CASE 
        WHEN RAND() <= 0.18 THEN FLOOR(7 + RAND() * 6)  
        WHEN RAND() <= 0.45 THEN FLOOR(13 + RAND() * 2) 
        WHEN RAND() <= 0.65 THEN FLOOR(15 + RAND() * 3) 
        ELSE FLOOR(18 + RAND() * 2)                     
    END AS age
FROM 
    (SELECT 1 FROM table_name LIMIT 5000) t;
