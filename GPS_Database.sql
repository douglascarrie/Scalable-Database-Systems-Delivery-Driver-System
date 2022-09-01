
/* Creates database */

CREATE DATABASE gps;


/* Creates Drivers table */
CREATE TABLE Drivers(
    DriverID int NOT NULL,
    DriverName varchar(45),
    DriverAddress varchar(255),
    PRIMARY KEY (DriverID)
    
);


/* Creates Vehicles table*/
CREATE TABLE Vehicles(
    VehicleID int NOT NULL,
    VehicleName varchar(45),
    PRIMARY KEY (VehicleID)
    
);
CREATE TABLE VehiclesLocation(
    ID int NOT NULL AUTO_INCREMENT,
    VehicleID int,
    DriverID int,
    Date varchar(10),
    Time varchar(10),
    VehicleLocation varchar(45),
    PRIMARY KEY (ID),
    FOREIGN KEY (VehicleID)
        REFERENCES Vehicles(VehicleID)
        ON DELETE CASCADE
);


/* Creates Shift table*/
CREATE TABLE Shift(
    DriverID int NOT NULL,
    VehicleAssigned int,
    ShiftTime varchar(45),
    ShiftDate date,
    PRIMARY KEY (DriverID),
    FOREIGN KEY (VehicleAssigned)
        REFERENCES Vehicles(VehicleID)
        ON DELETE CASCADE


   
);


/* Creates Parcels table*/
CREATE TABLE Parcels(
    ParcelID int NOT NULL,
    DriverID int,
    DeliveredParcel BIT DEFAULT 0 NOT NULL,
    DeliveryDate date,
    DeliveryAddress varchar(50),
    PRIMARY KEY (ParcelID),
    FOREIGN KEY (DriverID)
        REFERENCES Shift(DriverID)
        ON DELETE CASCADE

   


    
);









/* Inserts for database */





/* Insert for drivers table */

INSERT INTO gps.Drivers (DriverID, DriverName, DriverAddress)
VALUES 
('192843', 'Joel Gibson', '13 Fraserburgh Rd,Lincoln, LN2 5DG'),
('183933', 'Emily Yates', '2 Sudbrooke Lane,Nettleham, LN2 2RN'),
('178593', 'Carolyn Irvine', '15 Birkdale Close, Heighington, LN4 1SR'),
('145940', 'Kayley Bates', '13 Fraserburgh Rd,Lincoln, LN2 5DG'),
('196532', 'Rubie Munoz', '9 Ndola Drive, Horncastle, LN9 6ER'),
('157294', 'Chris Andersen', '1 St Davids Street, Brookenby, LN8 6EH'),
('123934', 'Alfie-Jay Guthrie', '25 Honington Crescent, Lincoln, LN1 3UT'),
('164739', 'Mason Ayers', 'Westrove, Cadney Road, Howsham, LN7 6LA'),
('113859', 'Iram Gibbons', '36 Home Farm Close, Laughterton, LN1 2BD'),
('103859', 'Kaylem Perkins', '12 Carn Close, Lincoln, LN5 9AX');




/* Insert for Vehicles */


INSERT INTO gps.Vehicles (VehicleID, VehicleName)
VALUES 
('297391189', 'Mercedes-benz Sprinter 314'),
('774860030', 'Mercedes-benz Vito 111'),
('137979860', 'Ford Transit Connect 200'),
('080341348', 'Volkswagen Caddy C20'),
('600880903', 'Peugeot Partner 850 S');


/* Insert for Vehicle Locations */


INSERT INTO gps.VehiclesLocation (VehicleID, DriverID, Date, Time, VehicleLocation)
VALUES 


/* 2021-01-02 */

/* Morning shift */


/* Mercedes-benz Sprinter 314 */
('297391189','192843','2021-01-02', '8:00', '53.16935332,-0.45953462'),
('297391189','192843','2021-01-02', '9:00', '53.19078782,-0.46382307'),
('297391189','192843','2021-01-02', '10:00', '53.28302423,-0.52976645'),
('297391189','192843','2021-01-02', '11:00', '53.18805913,-0.67537285'),
('297391189','192843','2021-01-02', '12:00', '53.25595858,-0.48887112'),


/* Mercedes-benz Vito 111 */
('774860030','183933', '2021-01-02', '8:00', '53.27727126,-0.50767366'),
('774860030','183933', '2021-01-02', '9:00', '53.22333082,-0.49068088'),
('774860030','183933', '2021-01-02', '10:00', '53.12851572,-0.61980951'),
('774860030','183933', '2021-01-02', '11:00', '53.27137048,-0.70034023'),
('774860030','183933', '2021-01-02', '12:00', '53.14552797,-0.61666253'),



/* Afternoon Shift */


/* Ford Transit Connect 200 */
('137979860', '157294', '2021-01-02', '8:00', '53.27727126,-0.50767366'),
('137979860', '157294', '2021-01-02', '9:00', '53.22333082,-0.49068088'),
('137979860', '157294', '2021-01-02', '10:00', '53.12851572,-0.61980951'),
('137979860', '157294', '2021-01-02', '11:00', '53.27137048,-0.70034023'),
('137979860', '157294', '2021-01-02', '12:00', '53.14552797,-0.61666253'),


/* Volkswagen Caddy C20 */
('080341348', '103859', '2021-01-02', '8:00', '53.27727126,-0.50767366'),
('080341348', '103859', '2021-01-02', '9:00', '53.22333082,-0.49068088'),
('080341348', '103859', '2021-01-02', '10:00', '53.12851572,-0.61980951'),
('080341348', '103859', '2021-01-02', '11:00', '53.27137048,-0.70034023'),
('080341348', '103859', '2021-01-02', '12:00', '53.14552797,-0.61666253'),



/* 2021-01-03 */



/* Morning shift */


/* Mercedes-benz Sprinter 314 */
('297391189','196532','2021-01-03', '8:00', '53.16935332,-0.45953462'),
('297391189','196532','2021-01-03', '9:00', '53.19078782,-0.46382309'),
('297391189','196532','2021-01-03', '10:00', '53.28302423,-0.52976635'),
('297391189','196532','2021-01-03', '11:00', '53.18805913,-0.67537299'),
('297391189','196532','2021-01-03', '12:00', '53.25595858,-0.48887123'),


/* Mercedes-benz Vito 111 */
('774860030','113859', '2021-01-03', '8:00', '53.27727126,-0.50767344'),
('774860030','113859', '2021-01-03', '9:00', '53.22333082,-0.49068089'),
('774860030','113859', '2021-01-03', '10:00', '52.12851572,-0.61980931'),
('774860030','113859', '2021-01-03', '11:00', '53.57137048,-0.70034063'),
('774860030','113859', '2021-01-03', '12:00', '53.14552797,-0.61666297'),



/* Afternoon Shift */


/* Ford Transit Connect 200 */
('137979860', '145940', '2021-01-03', '8:00', '53.27727126,-0.50767366'),
('137979860', '145940', '2021-01-03', '9:00', '53.22333082,-0.49068088'),
('137979860', '145940', '2021-01-03', '10:00', '53.12851572,-0.61980951'),
('137979860', '145940', '2021-01-03', '11:00', '53.27137048,-0.70034023'),
('137979860', '145940', '2021-01-03', '12:00', '53.14552797,-0.61666253'),


/* Volkswagen Caddy C20 */
('600880903', '164739', '2021-01-03', '8:00', '53.27727126,-0.50767366'),
('600880903', '164739', '2021-01-03', '9:00', '53.22333082,-0.49068088'),
('600880903', '164739', '2021-01-03', '10:00', '53.12851572,-0.61980951'),
('600880903', '164739', '2021-01-03', '11:00', '53.27137048,-0.70034023'),
('600880903', '164739', '2021-01-03', '12:00', '53.14552797,-0.61666253');




/* Insert for Shifts */

INSERT INTO gps.Shift (DriverID, VehicleAssigned, ShiftTime, ShiftDate)
VALUES 
/* 2021-01-02 */
('192843', '297391189', '8:00-11:55', '2021-01-02'),
('183933', '774860030', '8:00-11:55', '2021-01-02'),
('157294', '137979860', '12:00-16:00', '2021-01-02'),
('103859', '080341348', '12:00-16:00', '2021-01-02'),


/* 2021-01-03 */
('196532', '297391189', '8:00-11:55', '2021-01-03'),
('113859', '774860030', '8:00-11:55', '2021-01-03'),
('145940', '137979860', '12:00-16:00', '2021-01-03'),
('164739', '600880903', '12:00-16:00', '2021-01-03');



/* Insert for Parcels*/

INSERT INTO gps.Parcels (ParcelID, DriverID, DeliveredParcel, DeliveryDate,DeliveryAddress)
VALUES 
('19284356', '192843', 1, '2021-01-02', '1 Tiberius Walk, Caistor,LN7 6GY'),
('19284357', '192843', 1, '2021-01-02', '31 Higgins Close, Lincoln,LN6 0RL'),
('19284358', '192843', 0, '2021-01-02', '4 New Swan Close, Witham St Hughs,LN6 9WJ'),


('19284359', '183933', 1, '2021-01-02', 'Avron, Mill Lane, Thimbleby,LN9 5JS'),
('19284360', '183933', 0, '2021-01-02', '22 Beresford Close, Lincoln,LN6 7FN'),
('19284361', '183933', 0, '2021-01-02', 'Glebe House, Legsby,LN8 3QW'),


('19284362', '157294', 1, '2021-01-02', '51 Beaumont Fee, Lincoln,LN1 1EZ'),
('19284363', '157294', 0, '2021-01-02', 'Kelstern Hall, Kelstern,LN11 0RG'),
('19284364', '157294', 0, '2021-01-02', '3 Nursery Close, Langworth,LN3 5BU'),


('19284365', '164739', 1, '2021-01-03', '8 Meadow Road, Dunston,LN4 2EF'),
('19284366', '164739', 1, '2021-01-03', '3 Tower Drive, Woodhall Spa,LN10 6UG'),
('19284367', '164739', 1, '2021-01-03', '45 Nursery Close, Langworth,LN3 5BU'),


('19284368', '145940', 1, '2021-01-03', '42 Gresham Street, Lincoln,LN1 1PZ'),
('19284369', '145940', 1, '2021-01-03', '11 Upgate, Louth,LN11 9ES'),
('19284370', '145940', 1, '2021-01-03', '13 Chauntry Road, Alford,LN13 9HQ');









/* Stored Procedures */


/* How many parcels a driver has Delivered. */

DELIMITER //
CREATE PROCEDURE CheckDriverProgress( IN ID int)

BEGIN
SELECT Drivers.DriverID, DriverName,ParcelID, DeliveredParcel
FROM gps.Drivers
INNER JOIN gps.Parcels
ON Drivers.DriverID = Parcels.DriverID AND Parcels.DeliveredParcel = 1 AND Drivers.DriverID = ID;
END //

DELIMITER ;

CALL CheckDriverProgress(192843);



/* Select all drivers on morning shift */


DELIMITER //

CREATE PROCEDURE CheckMorningShift()

BEGIN
SELECT Drivers.DriverID, DriverName, ShiftTime
FROM gps.Drivers
INNER JOIN gps.Shift
ON Drivers.DriverID = Shift.DriverID AND Shift.ShiftTime = '8:00-11:55';
END //

DELIMITER ;

CALL CheckMorningShift;




/* Show location of any driver and vehicle --- ID is the Drivers ID || Date is date your searching for */

DELIMITER //

CREATE PROCEDURE CheckLocation( IN ID int, IN Date varchar(10))

BEGIN

SELECT VehiclesLocation.VehicleID, Drivers.DriverName, VehicleName, Time, VehicleLocation
FROM gps.VehiclesLocation
LEFT JOIN gps.Vehicles 
ON VehiclesLocation.VehicleID = Vehicles.VehicleID
LEFT JOIN gps.Drivers
ON VehiclesLocation.DriverID = Drivers.DriverID
WHERE VehiclesLocation.DriverID = ID AND VehiclesLocation.Date = date;

END //

DELIMITER ;

CALL CheckLocation(113859,'2021-02-03');





/* QUERIES */

/* Select all drivers */

SELECT DriverID, DriverName
FROM gps.Drivers;




/* Show location of any vehicle & Driver at any hour */

SELECT VehiclesLocation.VehicleID, Drivers.DriverName, VehicleName, Time, VehicleLocation
FROM gps.VehiclesLocation
LEFT JOIN gps.Vehicles 
ON VehiclesLocation.VehicleID = Vehicles.VehicleID
LEFT JOIN gps.Drivers
ON VehiclesLocation.DriverID = Drivers.DriverID
WHERE VehiclesLocation.DriverID = 192843 AND VehiclesLocation.Date = '2021-01-02';





 



