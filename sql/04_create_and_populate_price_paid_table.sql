-- Create Table
CREATE TABLE price_paid_data (
    transaction_id TEXT PRIMARY KEY,
    price NUMERIC,
    date_of_transfer DATE,
    postcode TEXT,
    property_type CHAR(1),
    old_new CHAR(1),
    duration CHAR(1),
    paon TEXT,
    saon TEXT,
    street TEXT,
    locality TEXT,
    town_city TEXT,
    district TEXT,
    county TEXT,
    ppd_category_type CHAR(1),
    record_status CHAR(1)
);

-- Populate Table
COPY price_paid_data FROM 'C:/Users/shiva/OneDrive/Desktop/House Price Project/pp-complete.csv' WITH (
    FORMAT csv,
    DELIMITER ',',
    QUOTE '"',
    NULL '',
    HEADER false
);

