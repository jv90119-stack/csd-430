<!--JOSE VELAZQUEZ
MODULE 9.2 ASSIGNMENT
DATE: 07/25/2026
This page allows users to update a movie record in the database.-->


<%@ page import="com.csd430.JoseMovieBean" %>
<%--
    Part 3 update form page.
    This JSP displays the selected record in input fields except the key field.
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
    <title>Update Movie Form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
    <h1>Part 3: Edit Movie Record</h1>
    <p>The primary key is displayed in a non-updatable format. All other fields may be changed.</p>

    <% if (movie == null) { %>
        <p>No movie record was found for the selected key.</p>
    <% } else { %>
        <form method="post" action="joseUpdateMovie.jsp">
            <div class="form-row">
                <label>Movie ID</label>
                <strong><%= movie.getMovieId() %></strong>
                <input type="hidden" name="movieId" value="<%= movie.getMovieId() %>">
            </div>
            <div class="form-row">
                <label for="movieTitle">Movie Title</label>
                <input type="text" name="movieTitle" id="movieTitle" value="<%= movie.getMovieTitle() %>" required>
            </div>
            <div class="form-row">
                <label for="genre">Genre</label>
                <input type="text" name="genre" id="genre" value="<%= movie.getGenre() %>" required>
            </div>
            <div class="form-row">
                <label for="releaseYear">Release Year</label>
                <input type="number" name="releaseYear" id="releaseYear" value="<%= movie.getReleaseYear() %>" required>
            </div>
            <div class="form-row">
                <label for="director">Director</label>
                <input type="text" name="director" id="director" value="<%= movie.getDirector() %>" required>
            </div>
            <div class="form-row">
                <label for="rating">Rating</label>
                <input type="text" name="rating" id="rating" value="<%= movie.getRating() %>" required>
            </div>
            <input type="submit" value="Update Movie Record">
        </form>
    <% } %>

    <p><a class="button" href="joseUpdateSelect.jsp">Choose Another Movie</a></p>
</div>
</body>
</html>
