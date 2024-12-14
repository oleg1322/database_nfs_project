-- какие машины в среднем быстрее форд или феррари
WITH avg_speeds AS (
    SELECT
        'Ford' AS car_name,
        AVG(max_speed) AS average_max_speed
    FROM cars_general_info
    WHERE car_name = 'Ford'
    UNION ALL
    SELECT
        'Ferrari' AS car_name,
        AVG(max_speed) AS average_max_speed
    FROM cars_general_info
    WHERE car_name = 'Ferrari'
)
SELECT car_name, average_max_speed
FROM avg_speeds
ORDER BY average_max_speed DESC
LIMIT 1;