-- средний налог на все porsche
SELECT AVG(tax::NUMERIC) AS average_tax
FROM cars_general_info
WHERE car_name = 'Porsche';
