<!--JOSE VELAZQUEZ
MODULE 5.3/6.3 ASSIGNMENT
DATE: 07/05/2026
This page displays a single movie record from the database.-->

<%@ page import="com.csd430.JoseMovieBean" %>
<%--
    joseMovieDisplay.jsp
    Receives the selected movie_id from joseMovieSelect.jsp and displays the matching record.
--%>
<%
    String movieIdValue = request.getParameter("movieId");
    JoseMovieBean movie = null;
    String errorMessage = "";

    if (movieIdValue != null && !movieIdValue.trim().isEmpty()) {
        try {
            int movieId = Integer.parseInt(movieIdValue);
            movie = JoseMovieBean.getMovieById(movieId);

            if (movie == null) {
                errorMessage = "No movie record was found for the selected key value.";
            }
        } catch (NumberFormatException e) {
            errorMessage = "The selected movie key was not valid.";
        }
    } else {
        errorMessage = "No movie key was selected.";
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movie Record Display</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
        <h1>Movie Record Display</h1>

        <p>
            This page displays one movie record from the jose_movies_data table.
            The record is selected by its unique primary key value.
        </p>

        <h2>Overall Data Description</h2>
        <p>
            The CSD430 movies database stores basic information about popular movies,
            including the movie title, genre, release year, rating, and director.
        </p>

        <h2>Selected Record</h2>

        <%
            if (movie != null) {
        %>
        <table>
            <thead>
                <tr>
                    <th>Movie ID</th>
                    <th>Title</th>
                    <th>Genre</th>
                    <th>Release Year</th>
                    <th>Rating</th>
                    <th>Director</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%= movie.getMovieId() %></td>
                    <td><%= movie.getTitle() %></td>
                    <td><%= movie.getGenre() %></td>
                    <td><%= movie.getReleaseYear() %></td>
                    <td><%= movie.getRating() %></td>
                    <td><%= movie.getDirector() %></td>
                </tr>
            </tbody>
        </table>
        <%
            } else {
        %>
        <p class="error"><%= errorMessage %></p>
        <%
            }
        %>

        <p><a href="joseMovieSelect.jsp">Choose Another Movie</a></p>
        <p><a href="index.jsp">Back to Project Index</a></p>
    </main>
</body>
</html>
