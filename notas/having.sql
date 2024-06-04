SELECT
    COUNT(*) as total,
    country
FROM
    users
GROUP BY country
HAVING COUNT(*) BETWEEN 5 AND 10
ORDER BY COUNT(*) ASC

--Distinct busca datos unicos
SELECT DISTINCT first_name FROM users


