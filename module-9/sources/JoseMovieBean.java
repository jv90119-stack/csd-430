/**
JOSE VELAZQUEZ
MODULE 9.2 ASSIGNMENT
DATE: 07/25/2026
JavaBean used by the JSP pages to read movie records from the CSD430 database.
The bean connects to the jose_movies_data table using the student1 account.
*/


package com.csd430;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * JoseMovieBean handles database access for the CSD430 jose_movies_data table.
 * This JavaBean is used by the JSP pages to select, insert, update, display,
 * and delete movie records.
 */
public class JoseMovieBean implements Serializable {
    private static final long serialVersionUID = 1L;

    private int movieId;
    private String movieTitle;
    private String genre;
    private int releaseYear;
    private String director;
    private String rating;

    private static final String DB_URL = "jdbc:mysql://localhost:3306/CSD430";
    private static final String DB_USER = "student1";
    private static final String DB_PASSWORD = "pass";
    private static final String TABLE_NAME = "jose_movies_data";

    public JoseMovieBean() {
    }

    public JoseMovieBean(int movieId, String movieTitle, String genre, int releaseYear, String director, String rating) {
        this.movieId = movieId;
        this.movieTitle = movieTitle;
        this.genre = genre;
        this.releaseYear = releaseYear;
        this.director = director;
        this.rating = rating;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getMovieTitle() {
        return movieTitle;
    }

    public void setMovieTitle(String movieTitle) {
        this.movieTitle = movieTitle;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public int getReleaseYear() {
        return releaseYear;
    }

    public void setReleaseYear(int releaseYear) {
        this.releaseYear = releaseYear;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    /** Loads the MySQL JDBC driver and returns a database connection. */
    private static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
    }

    /** Returns all primary key values from the movie table. */
    public static List<Integer> getMovieKeys() {
        List<Integer> keys = new ArrayList<>();
        String sql = "SELECT movie_id FROM " + TABLE_NAME + " ORDER BY movie_id";

        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                keys.add(rs.getInt("movie_id"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return keys;
    }

    /** Returns one movie record by primary key. */
    public static JoseMovieBean getMovieById(int movieId) {
        JoseMovieBean movie = null;
        String sql = "SELECT movie_id, title, genre, release_year, director, rating FROM jose_movies_data WHERE movie_id = ?";

        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, movieId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    movie = new JoseMovieBean(
                        rs.getInt("movie_id"),
                        rs.getString("title"),
                        rs.getString("genre"),
                        rs.getInt("release_year"),
                        rs.getString("director"),
                        rs.getString("rating")
                    );
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movie;
    }

    /** Returns all movie records from the database table. */
    public static List<JoseMovieBean> getAllMovies() {
        List<JoseMovieBean> movies = new ArrayList<>();
        String sql = "SELECT movie_id, title, genre, release_year, director, rating FROM jose_movies_data ORDER BY movie_id";

        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                movies.add(new JoseMovieBean(
                    rs.getInt("movie_id"),
                    rs.getString("title"),
                    rs.getString("genre"),
                    rs.getInt("release_year"),
                    rs.getString("director"),
                    rs.getString("rating")
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movies;
    }

    /** Inserts a new movie record. The primary key is auto-generated by MySQL. */
    public static boolean insertMovie(String movieTitle, String genre, int releaseYear, String director, String rating) {
        String sql = "INSERT INTO jose_movies_data (title, genre, release_year, director, rating) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, movieTitle);
            ps.setString(2, genre);
            ps.setInt(3, releaseYear);
            ps.setString(4, director);
            ps.setString(5, rating);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /** Updates an existing movie record. The primary key is not changed. */
    public static boolean updateMovie(int movieId, String movieTitle, String genre, int releaseYear, String director, String rating) {
        String sql = "UPDATE jose_movies_data SET title = ?, genre = ?, release_year = ?, director = ?, rating = ? WHERE movie_id = ?";

        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, movieTitle);
            ps.setString(2, genre);
            ps.setInt(3, releaseYear);
            ps.setString(4, director);
            ps.setString(5, rating);
            ps.setInt(6, movieId);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /** Deletes one movie record by primary key. */
    public static boolean deleteMovie(int movieId) {
        String sql = "DELETE FROM jose_movies_data WHERE movie_id = ?";

        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, movieId);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
