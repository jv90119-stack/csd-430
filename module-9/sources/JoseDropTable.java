/**
JOSE VELAZQUEZ
MODULE 9.2 ASSIGNMENT
DATE: 07/25/2026
Drops the jose_movies_data table from the CSD430 database.
*/


package com.csd430;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * Drops the jose_movies_data table from the CSD430 database.
 */
public class JoseDropTable {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/CSD430";
        String user = "student1";
        String password = "pass";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(url, user, password);
                 Statement stmt = conn.createStatement()) {
                stmt.executeUpdate("DROP TABLE IF EXISTS jose_movies_data");
                System.out.println("Table jose_movies_data dropped successfully.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
