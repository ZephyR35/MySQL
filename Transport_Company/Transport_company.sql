/* Описание.
 * База данных Transport_company представляет собой структуру для хранения данныъ транспортной компании,
 * перевозящей охлажденные и замороженные продукты.
 * Состоит из 9 таблиц: drivers(водители), trucks (грузовики), trailers (прицепы), reffers(рефрижераторы), reefer_info(информация о рефрижераторах),
 * products(перевозимые продукты), drivers_products(справочник для водителей и продуктов), routes(маршруты), cities(список горродов для маршрутов)
 * */


DROP DATABASE IF EXISTS tp; -- сокращение от transport company
CREATE DATABASE tp;
USE tp;

DROP TABLE IF EXISTS drivers;
CREATE TABLE drivers(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	driver_license_number BIGINT UNIQUE NOT NULL,
	gender CHAR (1),
	photo_id BIGINT UNIQUE NOT NULL,
	date_of_birth DATE,
	INDEX first_last_name_idx(first_name,last_name)
);


DROP TABLE IF EXISTS trucks;
CREATE TABLE trucks(
	id SERIAL PRIMARY KEY,
	brand VARCHAR(100), -- марка грузовика
	license_plate INT UNIQUE NOT NULL, -- госномер
	mileage INT DEFAULT (0), -- пробег
	driver_id BIGINT UNSIGNED, -- водитель грузовика	
	INDEX license_plate_idx(license_plate),
	FOREIGN KEY (driver_id) REFERENCES drivers(id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS reefers;
CREATE TABLE reefers(
	id SERIAL PRIMARY KEY,
	brand VARCHAR(100),
	model VARCHAR(100),
	serial_number BIGINT UNIQUE
);


DROP TABLE IF EXISTS trailes;
CREATE TABLE trailers(
	id SERIAL PRIMARY KEY,
	license_plate INT UNIQUE NOT NULL, -- госномер
	reefer_id BIGINT UNSIGNED, -- модель рефрижератора
	driver_id BIGINT UNSIGNED,
	truck_id BIGINT UNSIGNED,
	INDEX license_plate_idx(license_plate),
	FOREIGN KEY (driver_id) REFERENCES drivers(id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (truck_id) REFERENCES trucks(id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (reefer_id) REFERENCES reefers(id) ON DELETE CASCADE ON UPDATE CASCADE
);



DROP TABLE IF EXISTS cities;
CREATE TABLE cities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100)	
);


DROP TABLE IF EXISTS routes;
CREATE TABLE routes(
	departure_id BIGINT UNSIGNED,
	destanation_id BIGINT UNSIGNED,
	`date` DATE,
	driver_id BIGINT UNSIGNED,
	PRIMARY KEY (departure_id,destanation_id),
	FOREIGN KEY (departure_id) REFERENCES cities(id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (destanation_id) REFERENCES cities(id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (driver_id) REFERENCES drivers(id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS products; -- перевозимые товары
CREATE TABLE products(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	recomended_temperature INT,
	INDEX product_name_idx(name)
);


DROP TABLE IF EXISTS drivers_products; 
CREATE TABLE drivers_products(
	id SERIAL PRIMARY KEY,
	driver_id BIGINT UNSIGNED,
	product_id BIGINT UNSIGNED,
	FOREIGN KEY (driver_id) REFERENCES drivers(id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE ON UPDATE CASCADE
);


	

DROP TABLE IF EXISTS reefer_info;
CREATE TABLE reefer_info(
	id SERIAL PRIMARY KEY,
	reefer_id BIGINT UNSIGNED,
	curr_time DATETIME,
	temperature INT NOT NULL,
	suction_pressure INT NOT NULL,
	discharge_pressure INT NOT NULL,
	hours_counter INT,
	FOREIGN KEY (reefer_id) REFERENCES reefers(id) ON DELETE CASCADE ON UPDATE CASCADE
);





















