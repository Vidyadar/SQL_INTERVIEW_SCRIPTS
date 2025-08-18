DECLARE @n INT = 5;

WITH Numbers AS (
    SELECT @n AS num
    UNION ALL
    SELECT num - 1
    FROM Numbers
    WHERE num > 1
)
SELECT REPLICATE('* ', num) AS pattern
FROM Numbers

