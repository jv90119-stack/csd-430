/**
JOSE VELAZQUEZ
MODULE 5.3/6.3 ASSIGNMENT
DATE: 07/05/2026
Drops the jose_movies_data table from the CSD430 database.
*/


package com.csd430;

import java.sql.Connection;
import java.sql.Statement;

public class JoseDropTable {
    public static void main(String[] args) {
        String sql = "DROP TABLE IF EXISTS jose_movies_data";

        try (Connection connection = JoseMovieBean.getConnection();
             Statement statement = connection.createStatement()) {
            statement.executeUpdate(sql);
            System.out.println("Table jose_movies_data dropped successfully.");
        } catch (Exception e) {
            System.out.println("Error dropping table.");
            e.printStackTrace();
        }
    }
}
