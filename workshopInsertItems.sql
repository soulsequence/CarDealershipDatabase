# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          CarDealershipInsertTest                         #
# ---------------------------------------------------------------------- #

USE carDealership;

-- Poupulating Data (Used ChatGPT for sample data, I did the functions)

-- Insert data into Dealerships
INSERT INTO `Dealerships` (`Name`, `Address`, `Phone`) VALUES
('Sunset Auto Sales', '123 Sunset Blvd, CA', '555-1234'),
('Luxury Motors', '456 Oak Street, NY', '555-5678'),
('Green Drive Motors', '789 Green Lane, TX', '555-9876')
ON DUPLICATE KEY UPDATE `DealershipID` = `DealershipID`;

-- Insert data into Vehicles
INSERT IGNORE INTO `Vehicles` (`VIN`, `Year`, `Make`, `Model`, `VehicleType`, `Color`, `Odometer`, `Price`, `Sold`) VALUES
(10001, 2023, 'Toyota', 'Corolla', 'Sedan', 'Red', 12000, 25000, FALSE),
(10002, 2022, 'Honda', 'Civic', 'Sedan', 'Blue', 15000, 23000, TRUE),
(10003, 2023, 'Ford', 'Mustang', 'Coupe', 'Black', 5000, 45000, FALSE),
(10004, 2021, 'BMW', 'X5', 'SUV', 'White', 20000, 55000, TRUE),
(10005, 2023, 'Chevrolet', 'Tahoe', 'SUV', 'Silver', 0, 60000, FALSE)
ON DUPLICATE KEY UPDATE `VIN` = `VIN`;

-- Insert data into Inventory
INSERT IGNORE INTO `Inventory` (`DealershipID`, `VIN`) VALUES
(1, 10001),
(1, 10003),
(2, 10002),
(2, 10004),
(3, 10005);

-- Insert data into Customers
INSERT IGNORE INTO `Customers` (`Name`, `Email`) VALUES
('John Doe', 'johndoe@example.com'),
('Jane Smith', 'janesmith@example.com'),
('David Johnson', 'davidj@example.com'),
('Emily White', 'emilyw@example.com'),
('Mark Lee', 'markl@example.com');

-- Insert data into Contracts (Sales and Lease)
INSERT IGNORE INTO `Contracts` (`Date`, `ContractType`, `Financed`, `VIN`, `CustomerID`) VALUES
('2024-02-01', 'Sale', TRUE, 10001, 1), -- John Doe bought a Toyota Corolla
('2024-03-15', 'Lease', NULL, 10003, 2), -- Jane Smith leased a Ford Mustang
('2024-04-20', 'Sale', FALSE, 10002, 3), -- David Johnson bought a Honda Civic
('2024-05-10', 'Sale', TRUE, 10004, 4), -- Emily White bought a BMW X5
('2024-06-01', 'Lease', NULL, 10005, 5); -- Mark Lee leased a Chevrolet Tahoe