<!--JOSE VELAZQUEZ
MODULE 9.2 ASSIGNMENT
DATE: 07/25/2026
This page allows users to update a movie record in the database.-->


<%@ page import="com.csd430.JoseMovieBean" %>
<%--
    Part 3 update result page.
    This JSP updates the selected record and displays the updated record in a table.
--%>
<%
    int movieId = Integer.parseInt(request.getParameter("movieId"));
    String movieTitle = request.getParameter("movieTitle");
    String genre = request.getParameter("genre");
    int releaseYear = Integer.parseInt(request.getParameter("releaseYear"));
    String director = request.getParameter("director");
    String rating = request.getParameter("rating");

    boolean updated = JoseMovieBean.updateMovie(movieId, movieTitle, genre, releaseYear, director, rating);
    JoseMovieBean movie = JoseMovieBean.getMovieById(movieId);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Updated Movie Record</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
    <h1>Part 3: Updated Movie Record</h1>

    <% if (updated) { %>
        <div class="note success">The movie record was updated successfully.</div>
    <% } else { %>
        <div class="note error">The movie record was not updated.</div>
    <% } %>

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
        <% if (movie != null) { %>
            <tr>
                <td><%= movie.getMovieId() %></td>
                <td><%= movie.getMovieTitle() %></td>
                <td><%= movie.getGenre() %></td>
                <td><%= movie.getReleaseYear() %></td>
                <td><%= movie.getDirector() %></td>
                <td><%= movie.getRating() %></td>
            </tr>
        <% } else { %>
            <tr>
                <td colspan="6">The updated record could not be loaded.</td>
            </tr>
        <% } %>
        </tbody>
    </table>

    <p>
        <a class="button" href="joseUpdateSelect.jsp">Update Another Movie</a>
        <a class="button" href="index.jsp">Return to Index</a>
    </p>
</div>
</body>
</html>
