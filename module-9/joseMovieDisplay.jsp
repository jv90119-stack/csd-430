<!--JOSE VELAZQUEZ
MODULE 9.2 ASSIGNMENT
DATE: 07/25/2026
This page allows users to display a selected movie record from the database.-->


<%@ page import="com.csd430.JoseMovieBean" %>
<%--
    Part 1 display page.
    This JSP displays the selected movie record in a table format.
--%>
<%
    int movieId = 0;
    JoseMovieBean movie = null;

    if (request.getParameter("movieId") != null) {
        movieId = Integer.parseInt(request.getParameter("movieId"));
        movie = JoseMovieBean.getMovieById(movieId);
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
<div class="container">
    <h1>Selected Movie Record</h1>
    <p>The selected record is displayed below with each field in its own table column.</p>

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
                <td colspan="6">No record was found for the selected key.</td>
            </tr>
        <% } %>
        </tbody>
    </table>

    <p>
        <a class="button" href="joseMovieSelect.jsp">Select Another Movie</a>
        <a class="button" href="index.jsp">Return to Index</a>
    </p>
</div>
</body>
</html>
