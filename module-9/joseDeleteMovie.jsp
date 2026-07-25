<!--JOSE VELAZQUEZ
MODULE 9.2 ASSIGNMENT
DATE: 07/25/2026
This page allows users to delete a movie record from the database.-->


<%@ page import="java.util.List" %>
<%@ page import="com.csd430.JoseMovieBean" %>
<%--
    Part 4 delete select page.
    This JSP displays all records and provides a dropdown of primary keys for deletion.
    This follows the same pattern used in Part 3: select a key first, then submit to a result page.
--%>
<%
    List<JoseMovieBean> movies = JoseMovieBean.getAllMovies();
    List<Integer> movieKeys = JoseMovieBean.getMovieKeys();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Movie Record</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
    <h1>Part 4: Delete a Movie Record</h1>
    <p>This page displays all current movie records and provides a dropdown menu of key values for selecting a record to delete.</p>

    <div class="note">
        The movie_id field is the primary key. Select one movie_id from the dropdown and submit the form to delete that record.
    </div>

    <h2>Current Movie Records</h2>
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

    <h2>Delete a Record</h2>
    <% if (movieKeys.isEmpty()) { %>
        <p>There are no remaining keys to delete.</p>
    <% } else { %>
        <form method="post" action="joseDeleteResult.jsp">
            <div class="form-row">
                <label for="movieId">Select Movie ID to Delete</label>
                <select name="movieId" id="movieId" required>
                    <% for (Integer key : movieKeys) { %>
                        <option value="<%= key %>"><%= key %></option>
                    <% } %>
                </select>
            </div>
            <input type="submit" value="Delete Selected Record">
        </form>
    <% } %>

    <p><a class="button" href="index.jsp">Return to Index</a></p>
</div>
</body>
</html>
