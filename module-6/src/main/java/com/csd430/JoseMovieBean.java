/**
JOSE VELAZQUEZ
MODULE 5.3/6.3 ASSIGNMENT
DATE: 07/05/2026
JavaBean used by the JSP pages to read movie records from the CSD430 database.
The bean connects to the jose_movies_data table using the student1 account.
*/

package com.csd430;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class JoseMovieBean implements Serializable {
    private static final long serialVersionUID = 1L;

    private static final String DB_URL = "jdbc:mysql://localhost:3306/CSD430?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    private static final String DB_USER = "student1";
    private static final String DB_PASSWORD = "pass";

    private int movieId;
    private String title;
    private String genre;
    private int releaseYear;
    private String rating;
    private String director;

    /** Empty constructor required for JavaBeans. */
    public JoseMovieBean() {
    }

    /**
     * Creates and returns a database connection.
     *
     * @return Connection to the CSD430 database
     * @throws Exception if the driver or connection fails
     */
    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
    }

    /**
     * Reads all primary key values from the movie table for the dropdown menu.
     *
     * @return List of movie_id values
     */
    public static List<Integer> getMovieKeys() {
        List<Integer> keys = new ArrayList<>();
        String sql = "SELECT movie_id FROM jose_movies_data ORDER BY movie_id";

        try (Connection connection = getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {

            while (resultSet.next()) {
                keys.add(resultSet.getInt("movie_id"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return keys;
    }

    /**
     * Reads one movie record from the database by primary key.
     *
     * @param movieId selected primary key value
     * @return populated JoseMovieBean object, or null if no record is found
     */
    public static JoseMovieBean getMovieById(int movieId) {
        JoseMovieBean movie = null;
        String sql = "SELECT movie_id, title, genre, release_year, rating, director "
                + "FROM jose_movies_data WHERE movie_id = ?";

        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setInt(1, movieId);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    movie = new JoseMovieBean();
                    movie.setMovieId(resultSet.getInt("movie_id"));
                    movie.setTitle(resultSet.getString("title"));
                    movie.setGenre(resultSet.getString("genre"));
                    movie.setReleaseYear(resultSet.getInt("release_year"));
                    movie.setRating(resultSet.getString("rating"));
                    movie.setDirector(resultSet.getString("director"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return movie;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }
}
