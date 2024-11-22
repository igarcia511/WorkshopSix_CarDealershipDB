# 4. Find the dealership where a certain car is located by VIN #
/* 
SELECT d.* from inventory i 
JOIN vehicles v ON i.vin = v.vin
JOIN dealerships d ON i.dealershipId = d.dealershipId
WHERE v.vin LIKE '555%'; */
