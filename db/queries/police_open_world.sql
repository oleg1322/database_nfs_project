-- игры с полицией и открытым миром
SELECT g.game_name
FROM general_information g
JOIN game_features gf ON g.id = gf.game_id
WHERE gf.police = TRUE AND gf.open_world = TRUE;
