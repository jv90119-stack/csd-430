<!--JOSE VELAZQUEZ
MODULE 8.2 ASSIGNMENT
DATE: 07/19/2026
This page allows users to update an existing movie record in the database.-->


<%@ page import="com.csd430.JoseMovieBean" %>
<%@ page import="com.csd430.JoseMovieBean.MovieRecord" %>
<%--
    Jose Velazquez
    CSD430 Project Part 3
    This JSP receives updated form values, updates the selected database record,
    and displays the updated record in an HTML table.
--%>
<%
    int movieId = Integer.parseInt(request.getParameter("movieId"));
    String title = request.getParameter("title");
    String genre = request.getParameter("genre");
    int releaseYear = Integer.parseInt(request.getParameter("releaseYear"));
    String director = request.getParameter("director");
    String rating = request.getParameter("rating");

    JoseMovieBean.updateMovie(movieId, title, genre, releaseYear, director, rating);
    MovieRecord movie = JoseMovieBean.getMovieById(movieId);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Updated Movie Record</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
        <h1>Updated Movie Record</h1>
        <p>
            The selected movie record has been updated in the CSD430 database.
            The table below displays the updated record with each field in a separate column.
        </p>

        <section class="info-box">
            <h2>Record Description</h2>
            <p>
                This table shows one row from the jose_movies_data table. The movie_id field is the primary key,
                and the remaining fields describe the movie title, genre, release year, director, and rating.
            </p>
        </section>

        <table>
            <thead>
                <tr>
                    <th>movie_id<br>INT Primary Key</th>
                    <th>title<br>VARCHAR</th>
                    <th>genre<br>VARCHAR</th>
                    <th>release_year<br>INT</th>
                    <th>director<br>VARCHAR</th>
                    <th>rating<br>VARCHAR</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%= movie.getMovieId() %></td>
                    <td><%= movie.getTitle() %></td>
                    <td><%= movie.getGenre() %></td>
                    <td><%= movie.getReleaseYear() %></td>
                    <td><%= movie.getDirector() %></td>
                    <td><%= movie.getRating() %></td>
                </tr>
            </tbody>
        </table>

        <p><a href="joseUpdateSelect.jsp">Update Another Movie Record</a></p>
        <p><a href="joseDisplayAllMovies.jsp">View All Movie Records</a></p>
        <p><a href="index.jsp">Return to Project Index</a></p>
    </main>
</body>
</html>
