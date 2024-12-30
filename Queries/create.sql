-- Insert data into "customers" table:

-- Insert data into a single row
INSERT INTO customers (first_name, last_name, email_address, contact_number) 
VALUES 
('John', 'Doe', 'john.doe@example.com', '+639634078536');

-- Insert data into multiple rows
INSERT INTO customers (first_name, last_name, email_address, contact_number) 
VALUES 
('John', 'Doe', 'john.doe@example.com', '+639634078536'),
('Jane', 'Smith', 'jane.smith@example.com', '+639992817853');



-- Insert data into "rooms" table:

-- Insert data into a single row
INSERT INTO rooms (room_number, room_type, price_per_night, availability_status)
VALUES ('103', 'Double', 75.00, TRUE);

-- Insert data into multiple rows
INSERT INTO rooms (room_number, room_type, price_per_night, availability_status)
VALUES 
('103', 'Double', 75.00, TRUE),
('106', 'Suite', 150.00, TRUE);



-- Insert data into "bookings" table:

-- Insert data into a single row
INSERT INTO bookings (customer_id, room_id, check_in_date, check_out_date, booking_status)
VALUES (1, 1, '2024-01-01', '2024-01-03', 'Confirmed');

-- Insert data into multiple rows
INSERT INTO bookings (customer_id, room_id, check_in_date, check_out_date, booking_status)
VALUES 
(1, 1, '2024-01-01', '2024-01-03', 'Confirmed'), 
(2, 2, '2024-02-01', '2024-02-05', 'Confirmed'); 



-- Insert data into "payments" table:

-- Insert data into a single row
INSERT INTO Payments (booking_id, amount, payment_method)
VALUES (1, 150.00, 'Credit Card');

-- Insert data into multiple rows
INSERT INTO payments (booking_id, amount, payment_method)
VALUES 
(1, 150.00, 'Credit Card'), 
(2, 600.00, 'Cash'); 