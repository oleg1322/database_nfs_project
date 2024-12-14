CREATE OR REPLACE FUNCTION get_average_max_speed_by_name(brand TEXT) RETURNS TABLE(car_name TEXT, average_max_speed NUMERIC) AS $$
BEGIN
    RETURN QUERY
    SELECT car_name, AVG(max_speed) AS average_max_speed
    FROM cars_general_info
    WHERE car_name = brand
    GROUP BY car_name;
END;
$$ LANGUAGE plpgsql;
