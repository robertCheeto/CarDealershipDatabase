-- Creating my database
CREATE DATABASE cardealershipdatabase;

-- Use the database so all data can be added to tables
USE cardealershipdatabase;

-- Creating the tables for the database
CREATE TABLE dealerships (dealership_id int AUTO_INCREMENT PRIMARY KEY,
name varchar(50),
address varchar(50),
phone varchar(12));


CREATE TABLE vehicles (VIN int PRIMARY KEY,
make varchar(50),
model varchar(50),
mileage int,
price int,
sold varchar(1));

CREATE TABLE inventory (dealership_id int, VIN int,
FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
FOREIGN KEY (VIN) REFERENCES vehicles(VIN));

CREATE TABLE sales_contracts (contract_id int AUTO_INCREMENT PRIMARY KEY,
contract_date varchar(50),
contract_signee varchar(50),
VIN int,
FOREIGN KEY (VIN) REFERENCES vehicles(VIN));

-- Creating/Inserting data into each table
INSERT INTO dealerships (name, address, phone) VALUES
('Prime Auto Mall', '123 Main St, Springfield', '555-123-4567'),
('Highway Motors', '782 Elm Rd, Fairview', '555-987-1122'),
('Cityline Cars', '45 Market Ave, Riverton', '555-222-3344'),
('Superior Auto Group', '908 Sunset Blvd, Lakewood', '555-778-9900'),
('Trusted Wheels', '67 Oak Street, Brookfield', '555-667-8899'),
('Northside Motors', '1500 North Ave, Brighton', '555-004-7711'),
('East End Auto', '300 East Dr, Hillcrest', '555-332-2211'),
('Westview Dealership', '88 Horizon Way, Westport', '555-556-7788'),
('Southtown Cars', '255 Palm St, Southport', '555-441-2299'),
('Metro Auto Center', '600 Central Blvd, Midtown', '555-909-8080');

INSERT INTO vehicles (VIN, make, model, mileage, price, sold) VALUES
(100001, 'Toyota', 'Camry', 45200, 18500, 'N'),
(100002, 'Honda', 'Civic', 36750, 17200, 'Y'),
(100003, 'Ford', 'F-150', 58900, 26500, 'N'),
(100004, 'Chevrolet', 'Malibu', 31000, 16000, 'N'),
(100005, 'Nissan', 'Altima', 22100, 17800, 'Y'),
(100006, 'Jeep', 'Wrangler', 74500, 28800, 'N'),
(100007, 'Tesla', 'Model 3', 12000, 35500, 'Y'),
(100008, 'BMW', 'X5', 50300, 42000, 'N'),
(100009, 'Hyundai', 'Elantra', 38900, 15000, 'Y'),
(100010, 'Kia', 'Sorento', 44200, 19500, 'N'),
(100011, 'Toyota', 'RAV4', 31000, 24000, 'N'),
(100012, 'Honda', 'Accord', 28000, 22000, 'Y'),
(100013, 'Ford', 'Escape', 45000, 18500, 'N'),
(100014, 'Chevrolet', 'Silverado', 52000, 32000, 'Y'),
(100015, 'Nissan', 'Rogue', 37000, 21000, 'N'),
(100016, 'Jeep', 'Cherokee', 61000, 23000, 'N'),
(100017, 'Subaru', 'Outback', 29000, 25000, 'Y'),
(100018, 'Volkswagen', 'Jetta', 33000, 17000, 'N'),
(100019, 'BMW', '330i', 41000, 34000, 'N'),
(100020, 'Mercedes-Benz', 'C300', 36000, 38000, 'Y'),
(100021, 'Hyundai', 'Tucson', 27000, 19500, 'N'),
(100022, 'Kia', 'Sportage', 24000, 20000, 'N'),
(100023, 'Toyota', 'Highlander', 18000, 35000, 'Y'),
(100024, 'Honda', 'Pilot', 44000, 31000, 'N'),
(100025, 'Ford', 'Mustang', 15000, 33000, 'Y'),
(100026, 'Chevrolet', 'Tahoe', 56000, 42000, 'N'),
(100027, 'Nissan', 'Sentra', 39000, 16000, 'N'),
(100028, 'Jeep', 'Gladiator', 25000, 41000, 'Y'),
(100029, 'Tesla', 'Model Y', 8000, 47000, 'N'),
(100030, 'Hyundai', 'Sonata', 22000, 18000, 'Y');

INSERT INTO inventory (dealership_id, VIN) VALUES
(1, 100001),
(2, 100002),
(3, 100003),
(4, 100004),
(5, 100005),
(6, 100006),
(7, 100007),
(8, 100008),
(9, 100009),
(10, 100010),
(1, 100011),
(2, 100012),
(3, 100013),
(4, 100014),
(5, 100015),
(6, 100016),
(7, 100017),
(8, 100018),
(9, 100019),
(10, 100020),
(1, 100021),
(2, 100022),
(3, 100023),
(4, 100024),
(5, 100025),
(6, 100026),
(7, 100027),
(8, 100028),
(9, 100029),
(10, 100030);

INSERT INTO sales_contracts (contract_date, contract_signee, VIN) VALUES
('2024-01-12', 'Daniel Harris', 100002),
('2024-02-03', 'Michelle Turner', 100005),
('2024-03-18', 'Jonathan Reed', 100007),
('2024-04-09', 'Samantha Walsh', 100009),
('2024-05-14', 'Rachel Coleman', 100012),
('2024-05-22', 'Oscar Wright', 100014),
('2024-06-01', 'Linda Chen', 100017),
('2024-06-11', 'Peter Dawson', 100020),
('2024-06-18', 'Emily Rodriguez', 100023),
('2024-07-02', 'Marcus Allen', 100025),
('2024-07-10', 'Hannah Keller', 100028),
('2024-07-18', 'Jason Patel', 100030);