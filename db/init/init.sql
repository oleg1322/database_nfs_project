CREATE TABLE general_information (
    id SERIAL PRIMARY KEY,
    game_name VARCHAR(255) NOT NULL,
    studio VARCHAR(255) NOT NULL,
    release_year INT CHECK (release_year > 1993),
    platforms VARCHAR(255) NOT NULL
);

CREATE TABLE cars_general_info (
    id SERIAL PRIMARY KEY,
    car_name VARCHAR(255) NOT NULL,
    car_model VARCHAR(255) NOT NULL,
    max_speed INT NOT NULL,
    acceleration FLOAT NOT NULL,
    mass FLOAT NOT NULL,
    engine_volume FLOAT NOT NULL,
    horsepower INT NOT NULL,
    fuel_consumption FLOAT NOT NULL,
    country VARCHAR(255) NOT NULL,
    price MONEY
);

CREATE TABLE cars (
    game_id INT REFERENCES general_information(id),
    car_id INT REFERENCES cars_general_info(id),
    is_unlocked BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY (game_id, car_id)
);

CREATE TABLE game_features (
    game_id INT PRIMARY KEY REFERENCES general_information(id),
    story_mode BOOLEAN NOT NULL,
    open_world BOOLEAN NOT NULL,
    police BOOLEAN NOT NULL,
    tuning BOOLEAN NOT NULL,
    play_as_police BOOLEAN NOT NULL,
    multiplayer BOOLEAN NOT NULL
);

CREATE TABLE soundtracks (
    game_id INT REFERENCES general_information(id),
    track_name VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    youtube_link VARCHAR(255) NOT NULL,
    PRIMARY KEY (game_id, track_name)
);

CREATE TABLE system_requirements (
    game_id INT PRIMARY KEY REFERENCES general_information(id),
    min_os VARCHAR(255) NOT NULL,
    min_processor VARCHAR(255) NOT NULL,
    min_ram VARCHAR(255) NOT NULL,
    min_gpu VARCHAR(255) NOT NULL,
    min_directx VARCHAR(255) NOT NULL,
    min_disk_space VARCHAR(255) NOT NULL,
    rec_os VARCHAR(255) NOT NULL,
    rec_processor VARCHAR(255) NOT NULL,
    rec_ram VARCHAR(255) NOT NULL,
    rec_gpu VARCHAR(255) NOT NULL,
    rec_directx VARCHAR(255) NOT NULL,
    rec_disk_space VARCHAR(255) NOT NULL
);

CREATE TABLE tax_coefficients (
    horsepower_range INT PRIMARY KEY,
    tax_rate INT NOT NULL
);


-- для автовычисления

CREATE OR REPLACE FUNCTION calculate_tax(horsepower INT)
RETURNS MONEY AS $$
DECLARE
    tax_rate INT;
    tax_amount NUMERIC;
BEGIN
    
    SELECT tc.tax_rate INTO tax_rate
    FROM tax_coefficients tc
    WHERE tc.horsepower_range = (
        SELECT MAX(tc2.horsepower_range)
        FROM tax_coefficients tc2
        WHERE tc2.horsepower_range <= horsepower
    );

    tax_amount := (horsepower * tax_rate)::NUMERIC;

    RETURN tax_amount::MONEY;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_tax()
RETURNS TRIGGER AS $$
BEGIN

    NEW.tax := calculate_tax(NEW.horsepower);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER update_tax_trigger
BEFORE INSERT OR UPDATE ON cars_general_info
FOR EACH ROW
EXECUTE FUNCTION update_tax();

ALTER TABLE cars_general_info ADD COLUMN tax INT;
CREATE INDEX idx_car_name ON cars_general_info (car_name);
