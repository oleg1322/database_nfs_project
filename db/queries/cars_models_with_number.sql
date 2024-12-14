-- машины с цифрами в модели
SELECT car_name, car_model
FROM cars_general_info
WHERE car_model SIMILAR TO '%[0-9]%';
