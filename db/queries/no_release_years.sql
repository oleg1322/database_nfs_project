-- года начиная с 2000 до 2024 в которые н выходили игры nfs

WITH all_years AS (
    SELECT generate_series(2000, 2024) AS year
),
nfs_years AS (
    SELECT DISTINCT release_year
    FROM general_information
)
SELECT ay.year
FROM all_years ay
LEFT JOIN nfs_years ny ON ay.year = ny.release_year
WHERE ny.release_year IS NULL;
