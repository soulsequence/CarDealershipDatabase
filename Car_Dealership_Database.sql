# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          CarDealershipDatabase                           #
# ---------------------------------------------------------------------- #

DROP DATABASE IF EXISTS carDealership;

CREATE DATABASE IF NOT EXISTS carDealership;

USE carDealership;

# ---------------------------------------------------------------------- #
# Tables                                                                 #
# ---------------------------------------------------------------------- #
# ---------------------------------------------------------------------- #
# Add table "Dealerships"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `Dealerships` (
    `DealershipID` INTEGER NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(50),
    `Address` VARCHAR(50),
    `Phone` VARCHAR(12),
    PRIMARY KEY (`DealershipID`)
);

# ---------------------------------------------------------------------- #
# Add table "Vehicles"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `Vehicles` (
    `VIN` INTEGER NOT NULL,
    `Year`INTEGER,
    `Make` VARCHAR(50),
    `Model` VARCHAR(50),
    `VehicleType` VARCHAR(50),
    `Color` VARCHAR(50),
    `Odometer` INTEGER,
    `Price` NUMERIC,
    `Sold` BOOLEAN,
    PRIMARY KEY (`vin`)
);

# ---------------------------------------------------------------------- #
# Add table "Inventory"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `Inventory` (
    `DealershipID` INTEGER,
    `VIN` INTEGER,
    FOREIGN KEY (`DealershipID`) REFERENCES Dealerships(`DealershipID`),
    FOREIGN KEY (`VIN`) REFERENCES Vehicles(`VIN`)
);

# ---------------------------------------------------------------------- #
# Add table "Customer"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `Customers` (
    `CustomerID` INTEGER AUTO_INCREMENT,
    `Name` VARCHAR(50),
    `Email` VARCHAR(50),
    PRIMARY KEY (`CustomerID`)
);

# ---------------------------------------------------------------------- #
# Add table "Contracts"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `Contracts` (
    `ContractID` INTEGER AUTO_INCREMENT,
    `Date` DATE,
	`ContractType` ENUM('Sale', 'Lease') NOT NULL,
    `Financed` BOOLEAN, -- Only Applies to Sales
    `VIN` INTEGER,
    `CustomerID` INTEGER,
    FOREIGN KEY (`CustomerID`) REFERENCES Customers(`CustomerID`),
    FOREIGN KEY (`VIN`) REFERENCES Vehicles(`VIN`),
    PRIMARY KEY (`ContractID`)
);