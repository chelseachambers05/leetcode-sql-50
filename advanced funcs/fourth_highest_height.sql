SELECT MAX(height) as FourthHighest
FROM (
    SELECT
        height,
        DENSE_RANK() OVER(ORDER BY height DESC) as rnk
    FROM Measurements
) AS ranked
WHERE rnk = 4