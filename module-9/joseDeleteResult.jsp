<!--JOSE VELAZQUEZ
MODULE 9.2 ASSIGNMENT
DATE: 07/25/2026
This page allows users to delete a movie record from the database.-->


<%@ page import="java.util.List" %>
<%@ page import="com.csd430.JoseMovieBean" %>
<%--
    Part 4 delete result page.
    This JSP deletes the selected record, displays all remaining records,
    and provides another dropdown holding the remaining primary keys.
--%>
<%
    int deletedMovieId = 0;
    boolean deleted = false;

    if (request.getParameter("movieId") != null) {
        deletedMovieId = Integer.parseInt(request.getParameter("movieId"));
        deleted = JoseMovieBean.deleteMovie(deletedMovieId);
    }

    List<JoseMovieBean> movies = JoseMovieBean.getAllMovies();
    List<Integer> movieKeys = JoseMovieBean.getMovieKeys();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Movie Result</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
    <h1>Part 4: Delete Movie Result</h1>

    <% if (deleted) { %>
        <div class="note success">Movie ID <%= deletedMovieId %> was deleted successfully.</div>
    <% } else { %>
        <div class="note error">The selected movie record was not deleted.</div>
    <% } %>

    <h2>Remaining Movie Records</h2>
    <p>The table header remains visible even if every record has been deleted.</p>
    <p><strong>Total Remaining Records:</strong> <%= movies.size() %></p>

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
                <td colspan="6">All movie records have been deleted.</td>
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

    <h2>Delete Another Record</h2>
    <% if (movieKeys.isEmpty()) { %>
        <p>There are no remaining keys to delete.</p>
    <% } else { %>
        <form method="post" action="joseDeleteResult.jsp">
            <div class="form-row">
                <label for="movieId">Select Another Movie ID to Delete</label>
                <select name="movieId" id="movieId" required>
                    <% for (Integer key : movieKeys) { %>
                        <option value="<%= key %>"><%= key %></option>
                    <% } %>
                </select>
            </div>
            <input type="submit" value="Delete Another Record">
        </form>
    <% } %>

    <p>
        <a class="button" href="joseDeleteMovie.jsp">Return to Delete Start Page</a>
        <a class="button" href="index.jsp">Return to Index</a>
    </p>
</div>
</body>
</html>
