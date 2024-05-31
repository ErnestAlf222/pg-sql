SELECT * FROM users;


--¿Cuántos registros tiene la tabla?
--Sacar promedio de los followers AVG

SELECT
    COUNT(*) as total_users,
    MIN(followers) as min_followes,
    MAX(followers) as max_followers,
    ROUND(AVG(followers)) as avg_promedio,
    SUM(followers) / count(*) as avg_manual
FROM
    users;
    
--Agrupación por GROUP BY

SELECT
    first_name,
    last_name,
    followers
FROM
    users
WHERE
    followers = 4
    or followers = 4999
    
    
--group by
SELECT
    COUNT(*),
    followers
FROM
    users
WHERE
    followers = 4
    or followers = 4999
GROUP BY
    followers;


--Personas de rango de 4500 y 4999
SELECT
    COUNT(*),
    followers
FROM
    users
WHERE
    followers BETWEEN 4500
    and 4999
GROUP BY
    followers
ORDER BY
    followers ASC

