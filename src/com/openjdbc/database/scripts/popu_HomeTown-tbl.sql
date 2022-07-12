/**
    Author: Cloyd Van S. Secuya
    Date of Creation: July 12, 2022
    Description:
        Populate the HomeTown table
*/

-- Start using the created database from the schema
USE Simple_db;

INSERT INTO HomeTown (Home_ID, Village, Region, Province, City)
    VALUES
    -- BEGIN POPULATING ROWS
    (0010, "Village 1", "Region I", "Province 1", "City 1"),
    (0020, "Village 2", "Region 2", "Province 2", "City 2");
    -- END POPULATING ROWS