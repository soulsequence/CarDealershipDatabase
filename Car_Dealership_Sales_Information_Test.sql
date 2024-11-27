# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          FindSalesInformation                            #
# ---------------------------------------------------------------------- #
USE cardealership;

SELECT *
FROM inventory i
INNER JOIN dealerships d ON i.dealershipID = d.dealershipID
INNER JOIN vehicles v ON i.VIN = v.VIN
INNER JOIN contracts c ON i.VIN = c.VIN
WHERE v.Sold = 1
AND c.Date BETWEEN '1996-07-01' AND '2024-04-20';