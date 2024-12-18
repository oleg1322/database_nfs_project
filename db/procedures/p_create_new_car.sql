CREATE OR REPLACE PROCEDURE create_new_car(
    car_name VARCHAR,
    car_model VARCHAR,
    max_speed INT,
    acceleration NUMERIC,
    mass INT,
    engine_volume NUMERIC,
    horsepower INT,
    fuel_consumption NUMERIC,
    price MONEY,
    country VARCHAR
) LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO cars_general_info (car_name, car_model, max_speed, acceleration, mass, engine_volume, horsepower, fuel_consumption, price, country)
    VALUES (car_name, car_model, max_speed, acceleration, mass, engine_volume, horsepower, fuel_consumption, price, country);
END;
$$;


