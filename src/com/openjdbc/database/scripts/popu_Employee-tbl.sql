/**
    Author: Cloyd Van S. Secuya
    Date of Creation: July 12, 2022
    Description:
        Populate the Employee table
*/

-- Start using the created database from the schema
USE Simple_db;

INSERT INTO Employee (Emp_ID, First_name, Last_name, phone_num, email, home_address)
    /*
        This is where we try to integrate the inserting of values to the Employee table.
        Right now, we have a sample 2 rows. And this acts as a template for us to know which columns to fill in. 
    */
    VALUES 
    -- BEGIN POPULATING ROWS
    ROW(100, "Employee First_Name 1", "Employee Last_Name 1", 0000, "employeemail@domain.com", "employee_homeAddr1"),     
    ROW(100, "Employee First_Name 2", "Employee Last_Name 2", 0001, "employeemail@domain.com", "employee_homeAddr2");      
    -- END POPULATING ROWS