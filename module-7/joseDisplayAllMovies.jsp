<!--JOSE VELAZQUEZ
MODULE 7.2 ASSIGNMENT
DATE: 07/12/2026
This page displays all movie records in the database.-->


<%@ page import="java.util.List" %>
<%@ page import="com.csd430.JoseMovieBean" %>
<%@ page import="com.csd430.JoseMovieBean.MovieRecord" %>
<%--
    Jose Velazquez
    Display All Records JSP Page
    This page displays all records currently held in the jose_movies_data table.
--%>
<%
    List<MovieRecord> movies = JoseMovieBean.getAllMovies();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Movie Records</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
        <h1>All Movie Records</h1>
        <p>
            This page displays all records stored in the jose_movies_data table.
        </p>

        <table>
            <thead>
                <tr>
                    <th>Movie ID</th>
                    <th>Title</th>
                    <th>Genre</th>
                    <th>Release Year</th>
                    <th>Director</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (MovieRecord movie : movies) {
                %>
                <tr>
                    <td><%= movie.getMovieId() %></td>
                    <td><%= movie.getTitle() %></td>
                    <td><%= movie.getGenre() %></td>
                    <td><%= movie.getReleaseYear() %></td>
                    <td><%= movie.getDirector() %></td>
                    <td><%= movie.getRating() %></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

        <p><a href="index.jsp">Back to Project Index</a></p>
    </main>
</body>
</html>
