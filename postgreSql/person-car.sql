create table car (
	car_uid UUID NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL, 
	price VARCHAR(50) NOT NULL
);

create table person (
	person_uid UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(150),
	gender VARCHAR(7) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_brith VARCHAR(50),
    car_uid UUID REFERENCES car(car_uid),
    UNIQUE(car_uid),
    UNIQUE(email)
);


insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_brith) values (uuid_generate_v4(), 'Sofia', 'Parlor', 'sparlor0@cdbaby.com', 'Female', '2022-10-02', 'Vietnam');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_brith) values (uuid_generate_v4(), 'Christopher', 'Rowan', 'crowan1@deviantart.com', 'Male', '2022-10-19', 'France');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_brith) values (uuid_generate_v4(), 'Darbie', 'Kaplin', 'dkaplin2@sfgate.com', 'Female', '2022-08-21', 'China');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_brith) values (uuid_generate_v4(), 'Willie', 'Sarson', null, 'Female', '2022-09-14', 'Indonesia');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_brith) values (uuid_generate_v4(), 'Vitia', 'Pilbeam', 'vpilbeam4@virginia.edu', 'Female', '2023-02-24', 'Portugal');

insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Toyota', 'MR2', '15639.33');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Acura', 'TL', '31450.42');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Mercury', 'Grand Marquis', '12373.27');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Volkswagen', 'GTI', '48601.89');