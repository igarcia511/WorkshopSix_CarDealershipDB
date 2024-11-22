# 5. Find all Dealerships that have a certain car type (i.e RED FORD MUSTANG)#
/*

SELECT d.* FROM inventory AS i
JOIN vehicles v ON i.vin = v.vin
JOIN dealerships d ON i.dealershipId = d.dealershipId
WHERE v.make = 'ford' AND v.model = 'mustang' AND v.color = 'red'; */
