<!--JOSE VELAZQUEZ
MODULE 9.2 ASSIGNMENT
DATE: 07/25/2026
This page allows users to display all movie records from the database.-->


<%@ page import="java.util.List" %>
<%@ page import="com.csd430.JoseMovieBean" %>
<%--
    Display all records page.
    This JSP displays all records in the jose_movies_data table.
--%>
<%
    List<JoseMovieBean> movies = JoseMovieBean.getAllMovies();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Movie Records</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
    <h1>All Movie Records</h1>
    <p>This page displays every record currently held in the jose_movies_data table.</p>
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

    <p><a class="button" href="index.jsp">Return to Index</a></p>
</div>
</body>
</html>
