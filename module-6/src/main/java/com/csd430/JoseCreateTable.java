/**
JOSE VELAZQUEZ
MODULE 5.3/6.3 ASSIGNMENT
DATE: 07/05/2026
Creates the jose_movies_data table in the CSD430 database.
*/


package com.csd430;

import java.sql.Connection;
import java.sql.Statement;

public class JoseCreateTable {
    public static void main(String[] args) {
        String sql = "CREATE TABLE IF NOT EXISTS jose_movies_data ("
                + "movie_id INT NOT NULL AUTO_INCREMENT, "
                + "title VARCHAR(75) NOT NULL, "
                + "genre VARCHAR(40) NOT NULL, "
                + "release_year INT NOT NULL, "
                + "rating VARCHAR(10) NOT NULL, "
                + "director VARCHAR(75) NOT NULL, "
                + "PRIMARY KEY (movie_id))";

        try (Connection connection = JoseMovieBean.getConnection();
             Statement statement = connection.createStatement()) {
            statement.executeUpdate(sql);
            System.out.println("Table jose_movies_data created successfully.");
        } catch (Exception e) {
            System.out.println("Error creating table.");
            e.printStackTrace();
        }
    }
}
