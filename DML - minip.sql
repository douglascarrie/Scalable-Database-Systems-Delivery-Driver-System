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


INSERT INTO gps.Vehicles (VehicleID, VehicleName, VehicleLocation)
VALUES 
('297391189', 'Mercedes-benz Sprinter 314', '53.22854949, -0.54748682'),
('774860030', 'Mercedes-benz Vito 111', '53.22845354, -0.49769066'),
('137979860', 'Ford Transit Connect 200', '53.21204482, -0.58164275'),
('080341348', 'Volkswagen Caddy C20', '53.20241358, -0.55011708'),
('600880903', 'Peugeot Partner 850 S', '53.22293413, -0.58220269');


/* Insert for Shifts */

INSERT INTO gps.Shift (DriverID, VehicleAssigned, ShiftTime, ShiftDate)
VALUES 
('192843', '297391189', '8:00-11:55', '2021-01-29'),
('183933', '137979860', '12:00-16:00', '2021-01-29');




/* Insert for Parcels*/

INSERT INTO gps.Parcels (ParcelID, Driver, DeliveredParcel, DeliveryDate)
VALUES 
('19284356', '192843', 1, '2021-01-29'),
('19284357', '192843', 1, '2021-01-29'),
('19284358', '192843', 0, '2021-01-29'),
('19284359', '192843', 0, '2021-01-29'),
('19284360', '192843', 0, '2021-01-29');







/* Queries */


/* How many parcels a driver has Delivered. */

DELIMITER //
CREATE PROCEDURE CheckDriverProgress( IN ID int)

BEGIN
SELECT DriverID, DriverName,ParcelID, DeliveredParcel
FROM gps.Drivers
INNER JOIN gps.Parcels
ON Drivers.DriverID = Parcels.Driver AND Parcels.DeliveredParcel = 1 AND Drivers.DriverID = ID;
END //

DELIMITER ;

CALL CheckDriverProgress;
