/**
JOSE VELAZQUEZ
MODULE 8.2 ASSIGNMENT
DATE: 07/19/2026
Clears and populates the jose_movies_data table with 10 movie records.
*/


package com.csd430;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Populates the jose_movies_data table with sample movie records.
 */
public class JosePopulateTable {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/CSD430";
        String user = "student1";
        String password = "pass";

        String sql = "INSERT INTO jose_movies_data (title, genre, release_year, director, rating) VALUES (?, ?, ?, ?, ?)";

        String[][] records = {
            {"The Shawshank Redemption", "Drama", "1994", "Frank Darabont", "R"},
            {"The Dark Knight", "Action", "2008", "Christopher Nolan", "PG-13"},
            {"Forrest Gump", "Drama", "1994", "Robert Zemeckis", "PG-13"},
            {"Inception", "Science Fiction", "2010", "Christopher Nolan", "PG-13"},
            {"The Matrix", "Science Fiction", "1999", "The Wachowskis", "R"},
            {"Jurassic Park", "Adventure", "1993", "Steven Spielberg", "PG-13"},
            {"Toy Story", "Animation", "1995", "John Lasseter", "G"},
            {"Black Panther", "Action", "2018", "Ryan Coogler", "PG-13"},
            {"Coco", "Animation", "2017", "Lee Unkrich", "PG"},
            {"Spider-Man: Into the Spider-Verse", "Animation", "2018", "Bob Persichetti", "PG"}
        };

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(url, user, password);
                 PreparedStatement pstmt = conn.prepareStatement(sql)) {

                for (String[] record : records) {
                    pstmt.setString(1, record[0]);
                    pstmt.setString(2, record[1]);
                    pstmt.setInt(3, Integer.parseInt(record[2]));
                    pstmt.setString(4, record[3]);
                    pstmt.setString(5, record[4]);
                    pstmt.executeUpdate();
                }
                System.out.println("Table jose_movies_data populated successfully.");
            }
        } catch (Exception e) {
            System.out.println("Error populating table.");
            e.printStackTrace();
        }
    }
}
