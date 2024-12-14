-- вывод количества для каждой марки
SELECT car_name, COUNT(*) AS car_count
FROM cars_general_info
GROUP BY car_name;
