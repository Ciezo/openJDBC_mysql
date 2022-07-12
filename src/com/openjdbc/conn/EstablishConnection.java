/**
 * Author: Cloyd Van S. Secuya
 * Filename: EstablishConnection.java
 * Date of Creation: July 12, 2022
 * Description:
 *      This Java class file is responsible for establish a connection to the database 
 *      Hosted in the local machine in a MySQL Server.
 */

// PACKAGE SECTION
package com.openjdbc.conn;


// IMPORT SECTION
import java.sql.*;
import javax.sql.*;
import java.util.Scanner;


public class EstablishConnection {
    
    public static void main(String[] args) {
        
        Connection conn = null; 
        Statement stat = null; 
        ResultSet res = null; 
        
        // Database established credentials
        String user = ""; 
        String pass = ""; 
        
        Scanner sc = new Scanner(System.in); 
        
        System.out.print("Enter user: ");
        user = sc.nextLine(); 
        System.out.print("Enter password: ");
        pass = sc.nextLine(); 
        
        // URI
        /**
         * @NOTE: Set and customize this if necessary
         * Simple_db is the name of the database
         */
        String URI = "//localhost:3306/Simple_db";
        
        
        // Begin and try establishing a connection. If error persists we handle 
        // that through the try-block
        try {
            // Connection
            conn = DriverManager.getConnection("jdbc:mysql:" + URI, user, pass); 
            
            // Statement
            stat = conn.createStatement(); 
            
            // Try to execute a query 
            res = stat.executeQuery("SELECT * FROM Simple_db.Employee"); 
            
            // Process the result set
            /**
             * @NOTE: This loop will keep iterating as long as there is a 
             *        next row that the cursor will point to
             */
            while(res.next()) {
                // Simply, log the results to console
                System.out.println(res.getString("Emp_ID") + "\t" + res.getString("First_name") + "\t" + res.getString("Last_name") + "\t" + res.getString("phone_num") + "\t" + res.getString("email") + "\t" + res.getString("home_address"));
            }
        }
        
        catch(Exception e) {
            System.out.println("An error occured!");
            e.printStackTrace(); 
        }
    }
    
}
