# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          Car Dealership                                  #
# ---------------------------------------------------------------------- #

DROP DATABASE IF EXISTS CarDealership;

CREATE DATABASE IF NOT EXISTS CarDealership;

USE CarDealership;


# ---------------------------------------------------------------------- #
# Table 1                                                                #
# ---------------------------------------------------------------------- #
# ---------------------------------------------------------------------- #
# Add Table "Dealerships"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `Dealerships` (
`dealershipId`     INT NOT NULL auto_increment,
`name`             varchar(50),
`address`           varchar(50),
`phone`             varchar(12),
primary key(`dealershipId`)
);
CREATE INDEX `name` ON `Dealerships` (`name`);

TRUNCATE TABLE Dealerships;

INSERT INTO Dealerships VALUES(NULL, 'Wonder Cars', 'Wonder Way Street', '555-555-5555');
INSERT INTO Dealerships VALUES(NULL, 'Top Cars DFW', 'Dallas Way Street', '444-444-4444');
INSERT INTO Dealerships VALUES(NULL, 'Sports Car World', 'Frisco Way Street', '333-333-3333');
INSERT INTO Dealerships VALUES(NULL, 'Toy Cars Desoto', 'Desoto Way Street', '222-222-2222');

# ---------------------------------------------------------------------- #
# Add table "Vehicles"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE  `Vehicles` (
`vin`             varchar(20),
`year`            INT,
`make`            varchar(15),
`model`           varchar(30),
`mileage`         INT,
`color`           varchar(15),
`price`           DOUBLE,
`sold`            BOOLEAN,
PRIMARY KEY(`vin`)
);

#CREATE INDEX `vehicleId` ON `Vehicles` (`vehicleId`); #

INSERT INTO Vehicles VALUES('4444444444', 2022, 'nissan', 'altima', 32000, 'white', 23000, false);
INSERT INTO Vehicles VALUES('3333333333', 2023, 'ford', 'mustang', 20000, 'red', 19000, false);
INSERT INTO Vehicles VALUES('5555555555', 2024, 'toyota', 'camry', 5000, 'black', 38000, false);
INSERT INTO Vehicles VALUES('2222222222', 2022, 'ford', 'mustang', 12000, 'red', 26000, false);


CREATE TABLE  `Inventory` (
`dealershipId`      INT,
`vin`                varchar(20),
PRIMARY KEY(`dealershipId`, `vin`)
);

INSERT INTO Inventory VALUES(1, '5555555555');
INSERT INTO Inventory VALUES(2, '4444444444');
INSERT INTO Inventory VALUES(3, '3333333333');
INSERT INTO Inventory VALUES(4, '2222222222');








