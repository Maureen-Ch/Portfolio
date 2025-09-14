-- Author: Maureen
-- Project: Flights to Caribbean Islands (Summer 2024)
-- Description: SQL script to create the main flights_data table structure

CREATE TABLE flights_data (
    PASSENGERS INT,
    DISTANCE FLOAT,
    CARRIER_NAME VARCHAR(100),
    ORIGIN VARCHAR(10),
    ORIGIN_CITY_NAME VARCHAR(100),
    ORIGIN_COUNTRY_NAME VARCHAR(100),
    DEST VARCHAR(10),
    DEST_CITY_NAME VARCHAR(100),
    DEST_COUNTRY_NAME VARCHAR(100),
    YEAR INT,
    MONTH INT
);

