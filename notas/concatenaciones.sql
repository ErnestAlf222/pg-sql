-- Cambiar a mayúsculas
SELECT
    id,
    UPPER(NAME) as mayor,
    LOWER(NAME) as menor,
    LENGTH(NAME),
    (45*2) as constante,
    CONCAT(id ,'- ', name),
    --'*'||id||'-'||NAME||'*' as car,
    NAME
FROM
    users

-- Posición y busqueda
SELECT
    NAME,
    SUBSTRING( NAME, 0,5 ),
    POSITION('E' in NAME)
FROM
    users

-- Posición y busqueda
SELECT
    NAME,
    SUBSTRING(NAME, 0, 5),
    POSITION(' ' in NAME),
    SUBSTRING(NAME, 0, POSITION(' ' in NAME)) as first_name,
    SUBSTRING(NAME, POSITION(' ' in NAME) + 1) as last_name,
    TRIM(SUBSTRING(NAME, POSITION(' ' in NAME))) as promax
FROM
    users