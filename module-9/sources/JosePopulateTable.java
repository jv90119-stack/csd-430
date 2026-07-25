/**
JOSE VELAZQUEZ
MODULE 9.2 ASSIGNMENT
DATE: 07/25/2026
Clears and populates the jose_movies_data table with 10 movie records.
*/


package com.csd430;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * Populates the jose_movies_data table with starter movie records.
 */
public class JosePopulateTable {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/CSD430";
        String user = "student1";
        String password = "pass";

        String[] inserts = {
            "INSERT INTO jose_movies_data (movie_title, genre, release_year, director, rating) VALUES ('The Matrix', 'Science Fiction', 1999, 'The Wachowskis', 'R')",
            "INSERT INTO jose_movies_data (movie_title, genre, release_year, director, rating) VALUES ('Jurassic Park', 'Adventure', 1993, 'Steven Spielberg', 'PG-13')",
            "INSERT INTO jose_movies_data (movie_title, genre, release_year, director, rating) VALUES ('The Lion King', 'Animation', 1994, 'Roger Allers and Rob Minkoff', 'G')",
            "INSERT INTO jose_movies_data (movie_title, genre, release_year, director, rating) VALUES ('Inception', 'Science Fiction', 2010, 'Christopher Nolan', 'PG-13')",
            "INSERT INTO jose_movies_data (movie_title, genre, release_year, director, rating) VALUES ('Black Panther', 'Action', 2018, 'Ryan Coogler', 'PG-13')",
            "INSERT INTO jose_movies_data (movie_title, genre, release_year, director, rating) VALUES ('Coco', 'Animation', 2017, 'Lee Unkrich', 'PG')",
            "INSERT INTO jose_movies_data (movie_title, genre, release_year, director, rating) VALUES ('The Dark Knight', 'Action', 2008, 'Christopher Nolan', 'PG-13')",
            "INSERT INTO jose_movies_data (movie_title, genre, release_year, director, rating) VALUES ('Forrest Gump', 'Drama', 1994, 'Robert Zemeckis', 'PG-13')",
            "INSERT INTO jose_movies_data (movie_title, genre, release_year, director, rating) VALUES ('Toy Story', 'Animation', 1995, 'John Lasseter', 'G')",
            "INSERT INTO jose_movies_data (movie_title, genre, release_year, director, rating) VALUES ('The Avengers', 'Action', 2012, 'Joss Whedon', 'PG-13')"
        };

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(url, user, password);
                 Statement stmt = conn.createStatement()) {
                for (String insert : inserts) {
                    stmt.executeUpdate(insert);
                }
                System.out.println("Table populated successfully.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
