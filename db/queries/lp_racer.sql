-- вывода всех машин не которых можно погонять под трек linkin park
SELECT cgi.car_name, cgi.car_model, cgi.country, gi.game_name
FROM cars_general_info cgi
JOIN cars c ON cgi.id = c.car_id
JOIN general_information gi ON gi.id = c.game_id 
JOIN soundtracks st ON gi.id = st.game_id
WHERE st.author = 'Linkin Park';