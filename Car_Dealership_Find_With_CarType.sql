# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          FindDealershipWithCarType                       #
# ---------------------------------------------------------------------- #
USE cardealership;

SELECT i.VIN, d.dealershipID, d.address, v.vehicleType
FROM inventory i
INNER JOIN dealerships d ON i.dealershipID = d.dealershipID
INNER JOIN vehicles v ON i.VIN = v.VIN
WHERE v.VehicleType = 'Sedan';