drop database if exists cardealership;
create database cardealership;
use cardealership;

CREATE TABLE dealership(
dealershipid int auto_increment primary key,
name varchar (50),
address varchar(50),
phone varchar(12)
  );
  
  CREATE TABLE vehicles (
carmakemodel varchar(50),
carcolor varchar(50),
mileage int,
vin int primary key
);

CREATE TABLE inventory(
inventoryid int auto_increment primary key,
dealershipid int,
vin int,
foreign key (dealershipid) references dealership(dealershipid),
foreign key (vin) references vehicles(vin)
);

CREATE TABLE sales_contracts(
salesprice int,
salesid int auto_increment primary key,
vin int,
foreign key (vin) references vehicles(vin)
);

CREATE TABLE lease_contracts(
leasepice int,
leaseid int auto_increment primary key,
vin int,
foreign key (vin) references vehicles(vin)
);

INSERT INTO dealership(name, address, phone) VALUES
('AutoMax Motors', '123 Main St', '5551234567'),
('Speedway Autos', '456 Elm Ave', '5559876543'),
('Premium Drive', '789 Sunset Blvd', '5551112222');

INSERT INTO vehicles(carmakemodel, carcolor, mileage, vin) VALUES
('Toyota Camry', 'Blue', 45000, 1001),
('Honda Civic', 'Black', 32000, 1002),
('Ford F-150', 'White', 60000, 1003),
('Tesla Model 3', 'Red', 12000, 1004),
('Nissan Altima', 'Silver', 38000, 1005),
('Chevy Tahoe', 'Black', 52000, 1006);


INSERT INTO inventory(dealershipid, vin) VALUES
(1, 1001),
(1, 1004),
(2, 1002),
(2, 1005),
(3, 1003),
(3, 1006);

INSERT INTO sales_contracts(salesprice, vin) VALUES
(15500, 1001),
(28000, 1003),
(24000, 1005);


INSERT INTO lease_contracts(leasepice, vin) VALUES
(399, 1004),
(299, 1002),
(450, 1006);




