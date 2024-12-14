CREATE OR REPLACE FUNCTION create_new_car(
    car_name TEXT,
    car_model TEXT,
    max_speed INT,
    acceleration NUMERIC,
    mass INT,
    engine_volume NUMERIC,
    horsepower INT,
    fuel_consumption NUMERIC,
    price MONEY,
    country TEXT
) RETURNS VOID AS $$
BEGIN
    INSERT INTO cars_general_info (car_name, car_model, max_speed, acceleration, mass, engine_volume, horsepower, fuel_consumption, price, country)
    VALUES (car_name, car_model, max_speed, acceleration, mass, engine_volume, horsepower, fuel_consumption, price, country);
END;
$$ LANGUAGE plpgsql;
