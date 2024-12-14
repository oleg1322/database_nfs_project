-- cамая дорогая и дешевая машины
SELECT car_name AS "самая дорогая", car_model AS " ", price 
FROM cars_general_info
WHERE price IS NOT NULL
ORDER BY price::NUMERIC DESC
LIMIT 1;

SELECT car_name AS "самая дешевая", car_model AS " ", price
FROM cars_general_info
WHERE price IS NOT NULL
ORDER BY price::NUMERIC ASC
LIMIT 1;
