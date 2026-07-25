<!--JOSE VELAZQUEZ
MODULE 9.2 ASSIGNMENT
DATE: 07/25/2026
This page allows users to add a new movie record to the database.-->


<%@ page import="java.util.List" %>
<%@ page import="com.csd430.JoseMovieBean" %>
<%--
    Part 2 insert page.
    This JSP inserts the submitted movie record and then displays all records.
--%>
<%
    String movieTitle = request.getParameter("movieTitle");
    String genre = request.getParameter("genre");
    String director = request.getParameter("director");
    String rating = request.getParameter("rating");
    int releaseYear = 0;
    boolean inserted = false;

    if (request.getParameter("releaseYear") != null) {
        releaseYear = Integer.parseInt(request.getParameter("releaseYear"));
    }

    if (movieTitle != null && genre != null && director != null && rating != null) {
        inserted = JoseMovieBean.insertMovie(movieTitle, genre, releaseYear, director, rating);
    }

    List<JoseMovieBean> movies = JoseMovieBean.getAllMovies();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movie Insert Result</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
    <h1>Part 2: Movie Insert Result</h1>

    <% if (inserted) { %>
        <div class="note success">The new movie record was added successfully.</div>
    <% } else { %>
        <div class="note error">The movie record was not added. Check the form values and database connection.</div>
    <% } %>

    <h2>All Movie Records</h2>
    <p><strong>Total Records:</strong> <%= movies.size() %></p>

    <table>
        <thead>
            <tr>
                <th>movie_id INT PRIMARY KEY</th>
                <th>movie_title VARCHAR(100)</th>
                <th>genre VARCHAR(50)</th>
                <th>release_year INT</th>
                <th>director VARCHAR(100)</th>
                <th>rating VARCHAR(10)</th>
            </tr>
        </thead>
        <tbody>
        <% if (movies.isEmpty()) { %>
            <tr>
                <td colspan="6">No movie records are currently available.</td>
            </tr>
        <% } else { %>
            <% for (JoseMovieBean movie : movies) { %>
                <tr>
                    <td><%= movie.getMovieId() %></td>
                    <td><%= movie.getMovieTitle() %></td>
                    <td><%= movie.getGenre() %></td>
                    <td><%= movie.getReleaseYear() %></td>
                    <td><%= movie.getDirector() %></td>
                    <td><%= movie.getRating() %></td>
                </tr>
            <% } %>
        <% } %>
        </tbody>
    </table>

    <p>
        <a class="button" href="joseAddMovie.jsp">Add Another Movie</a>
        <a class="button" href="index.jsp">Return to Index</a>
    </p>
</div>
</body>
</html>
