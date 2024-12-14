CREATE OR REPLACE FUNCTION get_cars_by_name(c_name TEXT) RETURNS TABLE(car_name TEXT, car_model TEXT, max_speed INT, acceleration NUMERIC, mass INT, engine_volume NUMERIC, horsepower INT, fuel_consumption NUMERIC, price MONEY, country TEXT) AS $$
BEGIN
    RETURN QUERY
    SELECT car_name, car_model, max_speed, acceleration, mass, engine_volume, horsepower, fuel_consumption, price, country
    FROM cars_general_info
    WHERE car_name = c_name;
END;
$$ LANGUAGE plpgsql;
