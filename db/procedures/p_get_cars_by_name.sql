CREATE OR REPLACE FUNCTION get_cars_by_name(c_name VARCHAR)
RETURNS TABLE(car_name VARCHAR, car_model VARCHAR, max_speed INT, acceleration NUMERIC, mass INT, engine_volume NUMERIC, horsepower INT, fuel_consumption NUMERIC, price MONEY, country VARCHAR) AS $$
BEGIN
    RETURN QUERY
    SELECT cgi.car_name::VARCHAR, cgi.car_model::VARCHAR, 
    cgi.max_speed, cgi.acceleration::NUMERIC, cgi.mass::INT, cgi.engine_volume::NUMERIC, 
    cgi.horsepower, cgi.fuel_consumption::NUMERIC, cgi.price::MONEY, cgi.country::VARCHAR
    FROM cars_general_info cgi
    WHERE cgi.car_name = c_name;
END;
$$ LANGUAGE plpgsql;
