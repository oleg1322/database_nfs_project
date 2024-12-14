CREATE OR REPLACE FUNCTION update_car_info(
    car_id INT,
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
    UPDATE cars_general_info
    SET car_name = car_name,
        car_model = car_model,
        max_speed = max_speed,
        acceleration = acceleration,
        mass = mass,
        engine_volume = engine_volume,
        horsepower = horsepower,
        fuel_consumption = fuel_consumption,
        price = price,
        country = country
    WHERE id = car_id;
END;
$$ LANGUAGE plpgsql;
