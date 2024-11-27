# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          FindLocationByVINTest                           #
# ---------------------------------------------------------------------- #
USE cardealership;

SELECT i.VIN, d.address
FROM inventory i
INNER JOIN dealerships d ON i.dealershipID = d.dealershipID;