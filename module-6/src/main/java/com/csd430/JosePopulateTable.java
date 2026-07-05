/**
JOSE VELAZQUEZ
MODULE 5.3/6.3 ASSIGNMENT
DATE: 07/05/2026
Clears and populates the jose_movies_data table with 10 movie records.
*/

package com.csd430;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class JosePopulateTable {
    public static void main(String[] args) {
        String deleteSql = "DELETE FROM jose_movies_data";
        String resetSql = "ALTER TABLE jose_movies_data AUTO_INCREMENT = 1";
        String insertSql = "INSERT INTO jose_movies_data "
                + "(title, genre, release_year, rating, director) VALUES (?, ?, ?, ?, ?)";

        Object[][] movies = {
                {"The Dark Knight", "Action", 2008, "PG-13", "Christopher Nolan"},
                {"Jurassic Park", "Adventure", 1993, "PG-13", "Steven Spielberg"},
                {"Toy Story", "Animation", 1995, "G", "John Lasseter"},
                {"Inception", "Science Fiction", 2010, "PG-13", "Christopher Nolan"},
                {"The Lion King", "Animation", 1994, "G", "Roger Allers"},
                {"Black Panther", "Action", 2018, "PG-13", "Ryan Coogler"},
                {"Forrest Gump", "Drama", 1994, "PG-13", "Robert Zemeckis"},
                {"Spider-Man: Into the Spider-Verse", "Animation", 2018, "PG", "Bob Persichetti"},
                {"The Avengers", "Action", 2012, "PG-13", "Joss Whedon"},
                {"Coco", "Animation", 2017, "PG", "Lee Unkrich"}
        };

        try (Connection connection = JoseMovieBean.getConnection();
             Statement statement = connection.createStatement();
             PreparedStatement preparedStatement = connection.prepareStatement(insertSql)) {

            statement.executeUpdate(deleteSql);
            statement.executeUpdate(resetSql);

            for (Object[] movie : movies) {
                preparedStatement.setString(1, (String) movie[0]);
                preparedStatement.setString(2, (String) movie[1]);
                preparedStatement.setInt(3, (Integer) movie[2]);
                preparedStatement.setString(4, (String) movie[3]);
                preparedStatement.setString(5, (String) movie[4]);
                preparedStatement.executeUpdate();
            }

            System.out.println("Table jose_movies_data populated successfully.");
        } catch (Exception e) {
            System.out.println("Error populating table.");
            e.printStackTrace();
        }
    }
}
