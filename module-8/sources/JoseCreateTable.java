/**
JOSE VELAZQUEZ
MODULE 8.2 ASSIGNMENT
DATE: 07/19/2026
Creates the jose_movies_data table in the CSD430 database.
*/


package com.csd430;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * Creates the jose_movies_data table in the CSD430 database.
 */
public class JoseCreateTable {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/CSD430";
        String user = "student1";
        String password = "pass";

        String sql = "CREATE TABLE IF NOT EXISTS jose_movies_data ("
                + "movie_id INT NOT NULL AUTO_INCREMENT, "
                + "title VARCHAR(100) NOT NULL, "
                + "genre VARCHAR(50) NOT NULL, "
                + "release_year INT NOT NULL, "
                + "director VARCHAR(100) NOT NULL, "
                + "rating VARCHAR(10) NOT NULL, "
                + "PRIMARY KEY (movie_id))";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(url, user, password);
                 Statement stmt = conn.createStatement()) {
                stmt.executeUpdate(sql);
                System.out.println("Table jose_movies_data created successfully.");
            }
        } catch (Exception e) {
            System.out.println("Error creating table.");
            e.printStackTrace();
        }
    }
}
