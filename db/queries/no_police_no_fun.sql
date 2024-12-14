-- игры без полиции 
SELECT gi.game_name
FROM general_information gi
JOIN game_features gf ON gi.id = gf.game_id
WHERE gf.police = FALSE;
