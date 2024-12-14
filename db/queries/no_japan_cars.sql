-- игры без японских машин
SELECT gi.game_name
FROM general_information gi
WHERE NOT EXISTS (
    SELECT 1
    FROM cars c
    JOIN cars_general_info cgi ON c.car_id = cgi.id
    WHERE c.game_id = gi.id
    AND cgi.country = 'Japan'
);
