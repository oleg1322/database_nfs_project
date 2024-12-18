CREATE OR REPLACE FUNCTION get_average_max_speed_by_name(brand VARCHAR)
RETURNS TABLE(car_name VARCHAR, average_max_speed NUMERIC) AS $$
BEGIN
    RETURN QUERY
    SELECT cgi.car_name::VARCHAR, AVG(cgi.max_speed) AS average_max_speed
    FROM cars_general_info cgi
    WHERE cgi.car_name = brand
    GROUP BY cgi.car_name;
END;
$$ LANGUAGE plpgsql;
