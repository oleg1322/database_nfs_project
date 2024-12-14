drop FUNCTION calculate_tax(horsepower FLOAT);
drop FUNCTION calculate_tax(horsepower INT);

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

