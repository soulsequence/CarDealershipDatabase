# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          CarDealershipFindVehiclesForSpecificDealership  #
# ---------------------------------------------------------------------- #

USE cardealership;
SELECT *
FROM inventory
WHERE DealershipID = '1';