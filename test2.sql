# 2. Find all vehicles for a specific dealership #
/* 
SELECT v.* FROM inventory as i
JOIN vehicles v ON i.vin = v.vin
JOIN dealerships d ON i.dealershipId = d.dealershipId
WHERE d.name LIKE 'WONDER%'; */
