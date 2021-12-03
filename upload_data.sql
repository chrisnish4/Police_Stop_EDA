CREATE DATABASE aws_ps;

USE aws_ps;

CREATE TABLE race_di (
	stop_id INT NOT NULL,
    pid INT NOT NULL, 
    race VARCHAR(70)
);

LOAD DATA LOCAL INFILE '/Users/chris/Desktop/Machine_Learning/police_stop/data_csv/ripa_race_datasd.csv'
INTO TABLE race_di
FIELDS TERMINATED BY','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE result_di (
	stop_id int not null,
    pid int not null, 
    resultkey int not null,
    result varchar(200),
    num_code varchar(10),
    reult_text varchar(200)
);

LOAD DATA LOCAL INFILE '/Users/chris/Desktop/Machine_Learning/police_stop/data_csv/ripa_stop_result_datasd.csv'
INTO TABLE result_di
FIELDS TERMINATED BY','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

create table stop_info_di (
	stop_id int not null, 
    ori varchar(15),
    agency varchar(5),
    exp_years int not null,
    date_stop date,
    time_stop time, 
    stop_duration int not null,
    stop_in_response_to_cfs int,
    officer_assignment_key int, 
    assignment varchar(100),
    intersection varchar(200),
    address_block varchar(10), 
    land_mark varchar(150),
    address_street varchar(300),
    highway_exit varchar(100), 
    isschool int, 
    school_name varchar(200),
    address_city varchar(100),
    beat int, 
    beat_name varchar(100),
    pid int, 
    isstudent int, 
    perceived_limited_english int, 
    perceived_age int, 
    perceived_gender varchar(50),
    gender_nonconforming int, 
    gend int, 
    gend_nc varchar(100),
    perceived_lgbt varchar(5)
);

LOAD DATA LOCAL INFILE '/Users/chris/Desktop/Machine_Learning/police_stop/data_csv/ripa_stops_datasd.csv'
INTO TABLE stop_info_di
FIELDS TERMINATED BY','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


