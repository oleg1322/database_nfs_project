-- самая часто встречающаяся машина
SELECT cgi.car_name, cgi.car_model, COUNT(*) AS occurrences
FROM cars_general_info cgi
JOIN cars c ON cgi.id = c.car_id
GROUP BY cgi.car_name, cgi.car_model
ORDER BY occurrences DESC
LIMIT 1;
