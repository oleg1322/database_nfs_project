CREATE OR REPLACE FUNCTION delete_car(car_id INT) RETURNS VOID AS $$
BEGIN
    DELETE FROM cars_general_info
    WHERE id = car_id;
END;
$$ LANGUAGE plpgsql;
