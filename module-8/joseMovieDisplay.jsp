<!--JOSE VELAZQUEZ
MODULE 8.2 ASSIGNMENT
DATE: 07/19/2026
This page allows users to display a selected movie record from the database.-->


<%@ page import="com.csd430.JoseMovieBean" %>
<%@ page import="com.csd430.JoseMovieBean.MovieRecord" %>
<%--
    Jose Velazquez
    Module 6 JSP Page
    This page displays one selected movie record in an HTML table.
--%>
<%
    int movieId = Integer.parseInt(request.getParameter("movieId"));
    MovieRecord movie = JoseMovieBean.getMovieById(movieId);
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
            The table below displays the selected record from the jose_movies_data table.
            Each database field is displayed in its own column.
        </p>

        <h2>Field Descriptions</h2>
        <p>
            movie_id is the primary key. Title is the name of the movie. Genre describes the movie category.
            Release year shows when the movie was released. Director identifies the person or team who directed it.
            Rating shows the movie's content rating.
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
                    if (movie != null) {
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
                    } else {
                %>
                <tr>
                    <td colspan="6">No record was found for the selected movie ID.</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

        <p><a href="joseMovieSelect.jsp">Select Another Movie</a></p>
        <p><a href="index.jsp">Back to Project Index</a></p>
    </main>
</body>
</html>
