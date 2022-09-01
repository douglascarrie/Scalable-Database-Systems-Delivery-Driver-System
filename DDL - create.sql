
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
    VehicleLocation varchar(255),
    PRIMARY KEY (VehicleID)
    
);

/* Creates Shift table*/
CREATE TABLE Shift(
    DriverID int NOT NULL,
    VehicleAssigned int,
    ShiftTime varchar(45),
    PRIMARY KEY (DriverID),
    FOREIGN KEY (VehicleAssigned)
        REFERENCES Vehicles(VehicleID)
        ON DELETE CASCADE


    
);


/* Creates Parcels table*/
CREATE TABLE Parcels(
    ParcelID int NOT NULL,
    DriverID int,
    DeliveredParcel varchar(255),
    DevileryDate date,
    PRIMARY KEY (ParcelID),
    FOREIGN KEY (DriverID)
        REFERENCES Shift(DriverID)
        ON DELETE CASCADE

   


    
);


