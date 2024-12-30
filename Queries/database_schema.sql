-- Create the Customers Table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email_address VARCHAR(100) UNIQUE NOT NULL,
    contact_number VARCHAR(15)
);

-- Create the Rooms Table
CREATE TABLE Rooms (
    room_id SERIAL PRIMARY KEY,
    room_number VARCHAR(10) UNIQUE NOT NULL,
    room_type VARCHAR(50) NOT NULL, -- e.g., Single, Double, Suite
    price_per_night DECIMAL(10, 2) NOT NULL,
    availability_status BOOLEAN DEFAULT TRUE
);

-- Create the Bookings Table
CREATE TABLE Bookings (
    booking_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    room_id INT NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    booking_status VARCHAR(20) DEFAULT 'Confirmed', -- e.g., Confirmed, Cancelled
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id) ON DELETE CASCADE,
    FOREIGN KEY (room_id) REFERENCES Rooms (room_id) ON DELETE CASCADE
);

-- Create the Payments Table
CREATE TABLE Payments (
    payment_id SERIAL PRIMARY KEY,
    booking_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATE NOT NULL DEFAULT CURRENT_DATE,
    payment_method VARCHAR(50), -- e.g., Credit Card, Cash, Online
    FOREIGN KEY (booking_id) REFERENCES Bookings (booking_id) ON DELETE CASCADE
);
