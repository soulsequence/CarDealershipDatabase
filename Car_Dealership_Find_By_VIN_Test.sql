# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          CarDealershipFindByVinTest                      #
# ---------------------------------------------------------------------- #

USE cardealership;
SELECT *
FROM vehicles
WHERE VIN = '10002';