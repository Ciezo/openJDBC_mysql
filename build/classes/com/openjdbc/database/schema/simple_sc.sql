/**
    Author: Cloyd Van S. Secuya
    Date of Creation: July 12, 2022
    Description:
        This script is for creating a simple schema for our database named Simple_db.
*/

-- Start creating a MySQL Database named Simple_db
CREATE Database Simple_db; 

-- Tables
CREATE TABLE Simple_db.Employee 
(
    Emp_ID          INT             NOT NULL,
    First_name      VARCHAR(100)    NOT NULL, 
    Last_name       VARCHAR(100)    NOT NULL,
    phone_num       BIGINT          NOT NULL, 
    email           VARCHAR(120)    NOT NULL,
    home_address    VARCHAR(500)    NOT NULL
);

CREATE TABLE Simple_db.HomeTown
(
    Home_ID         INT             NOT NULL,
    Village         VARCHAR(200)    NOT NULL,
    Region          VARCHAR(200)    NOT NULL,
    Province        VARCHAR(200)    NOT NULL,
    City            VARCHAR(200)    NOT NULL
);