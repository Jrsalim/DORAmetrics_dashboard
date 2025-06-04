-- Création de la table dimtemps
CREATE TABLE dimtemps (
    date_id INT PRIMARY KEY,           -- format yyyymmdd
    full_date DATE,
    day TINYINT,
    month TINYINT,
    month_name VARCHAR(20),
    month_year VARCHAR(10),
    year SMALLINT,
    quarter TINYINT,
    week_number TINYINT,
    day_of_week TINYINT,
    day_name VARCHAR(20),
    is_weekend BIT
);
GO

-- Remplissage de la table dimtemps de 2015-01-01 à 2030-12-31
WITH Dates AS (
    SELECT CAST('2015-01-01' AS DATE) AS dte
    UNION ALL
    SELECT DATEADD(DAY, 1, dte)
    FROM Dates
    WHERE dte < '2030-12-31'
)
INSERT INTO dimtemps (
    date_id, full_date, day, month, month_name,
    month_year, year, quarter, week_number,
    day_of_week, day_name, is_weekend
)
SELECT
    CAST(FORMAT(dte, 'yyyyMMdd') AS INT) AS date_id,
    dte AS full_date,
    DATEPART(DAY, dte) AS day,
    DATEPART(MONTH, dte) AS month,
    DATENAME(MONTH, dte) AS month_name,
    FORMAT(dte, 'MM-yyyy') AS month_year,
    DATEPART(YEAR, dte) AS year,
    DATEPART(QUARTER, dte) AS quarter,
    DATEPART(WEEK, dte) AS week_number,
    DATEPART(WEEKDAY, dte) AS day_of_week,
    DATENAME(WEEKDAY, dte) AS day_name,
    CASE 
        WHEN DATENAME(WEEKDAY, dte) IN ('Saturday', 'Sunday') THEN 1 
        ELSE 0 
    END AS is_weekend
FROM Dates
OPTION (MAXRECURSION 32767);
