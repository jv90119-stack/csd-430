<!--JOSE VELAZQUEZ
MODULE 8.2 ASSIGNMENT
DATE: 07/19/2026
This page allows users to update an existing movie record in the database.-->


<%@ page import="com.csd430.JoseMovieBean" %>
<%@ page import="com.csd430.JoseMovieBean.MovieRecord" %>
<%--
    Jose Velazquez
    CSD430 Project Part 3
    This JSP receives the selected movie_id, retrieves the matching record,
    and displays the record values in a form. The primary key is displayed
    in a non-updatable format.
--%>
<%
    int movieId = Integer.parseInt(request.getParameter("movieId"));
    MovieRecord movie = JoseMovieBean.getMovieById(movieId);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Movie Record</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
        <h1>Edit Movie Record</h1>
        <p>
            The movie ID is the primary key and cannot be changed. Update the remaining fields,
            then submit the form to save the changes to the database.
        </p>

        <% if (movie == null) { %>
            <p class="error">No movie record was found for the selected key value.</p>
            <p><a href="joseUpdateSelect.jsp">Choose Another Movie</a></p>
        <% } else { %>
            <section class="info-box">
                <h2>Field Descriptions</h2>
                <p><strong>movie_id:</strong> Primary key value. This field is displayed but not editable.</p>
                <p><strong>title:</strong> Name of the movie.</p>
                <p><strong>genre:</strong> Movie category or type.</p>
                <p><strong>release_year:</strong> Year the movie was released.</p>
                <p><strong>director:</strong> Main director of the movie.</p>
                <p><strong>rating:</strong> Movie rating, such as G, PG, PG-13, or R.</p>
            </section>

            <form action="joseUpdateMovie.jsp" method="post">
                <label for="movieIdDisplay">Movie ID:</label>
                <input type="text" id="movieIdDisplay" value="<%= movie.getMovieId() %>" readonly>
                <input type="hidden" name="movieId" value="<%= movie.getMovieId() %>">

                <label for="title">Movie Title:</label>
                <input type="text" id="title" name="title" value="<%= movie.getTitle() %>" maxlength="100" required>

                <label for="genre">Genre:</label>
                <input type="text" id="genre" name="genre" value="<%= movie.getGenre() %>" maxlength="50" required>

                <label for="releaseYear">Release Year:</label>
                <input type="number" id="releaseYear" name="releaseYear" value="<%= movie.getReleaseYear() %>" min="1900" max="2100" required>

                <label for="director">Director:</label>
                <input type="text" id="director" name="director" value="<%= movie.getDirector() %>" maxlength="100" required>

                <label for="rating">Rating:</label>
                <input type="text" id="rating" name="rating" value="<%= movie.getRating() %>" maxlength="10" required>

                <button type="submit">Update Movie Record</button>
            </form>
        <% } %>

        <p><a href="index.jsp">Return to Project Index</a></p>
    </main>
</body>
</html>
