DECLARE @n INT = 5;
WITH  numbers AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1 FROM numbers WHERE n < @n
)
SELECT REPLICATE('* ', n) FROM numbers;