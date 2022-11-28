CREATE TABLE service_facility(
    mechanic_id SERIAL,
    service_ticket_id SERIAL,
    service_record SERIAL PRIMARY KEY
);

CREATE TABLE product(
    product_id SERIAL PRIMARY KEY,
    car_new VARCHAR(100),
    car_used VARCHAR(100),
    invoice_id SERIAL
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_vehicle SERIAL
);

CREATE TABLE dealership(
    salesperson_id SERIAL PRIMARY KEY,
    service_record INTEGER,
    FOREIGN KEY (service_record) REFERENCES service_facility(service_record)
);

INSERT INTO product(
    car_new,
    car_used
)
VALUES(
    '2023 Honda Civic',
    '2003 Ford Escape'
),
(
    '2023 Ford Ranger',
    '1998 Toyota Avalon'
),
(
    '2023 Kia Niro',
    '2001 Chevy Silverado'
);