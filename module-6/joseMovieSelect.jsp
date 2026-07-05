<!--JOSE VELAZQUEZ
MODULE 5.3/6.3 ASSIGNMENT
DATE: 07/05/2026
This page displays a list of all movies in the database.-->

<%@ page import="java.util.List" %>
<%@ page import="com.csd430.JoseMovieBean" %>
<%--
    joseMovieSelect.jsp
    Displays a dropdown menu containing all primary key values from jose_movies_data.
    The selected key is submitted to joseMovieDisplay.jsp.
--%>
<%
    List<Integer> movieKeys = JoseMovieBean.getMovieKeys();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Select Movie Record</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
        <h1>Select a Movie Record</h1>

        <p>
            This page connects to the CSD430 database through a JavaBean and loads
            the primary key values from the jose_movies_data table into the dropdown menu.
        </p>

        <h2>Record Description</h2>
        <p>
            Each record represents one movie. The selected key value identifies one
            unique movie record to display on the next page.
        </p>

        <h2>Field Descriptions</h2>
        <ul>
            <li><strong>Movie ID:</strong> Primary key for each movie record.</li>
            <li><strong>Title:</strong> Name of the movie.</li>
            <li><strong>Genre:</strong> Movie category.</li>
            <li><strong>Release Year:</strong> Year the movie was released.</li>
            <li><strong>Rating:</strong> Movie rating.</li>
            <li><strong>Director:</strong> Director of the movie.</li>
        </ul>

        <form action="joseMovieDisplay.jsp" method="post">
            <label for="movieId">Choose a Movie ID:</label>
            <select id="movieId" name="movieId" required>
                <option value="">-- Select a Movie ID --</option>
                <%
                    for (Integer key : movieKeys) {
                %>
                <option value="<%= key %>"><%= key %></option>
                <%
                    }
                %>
            </select>
            <button type="submit">Display Movie</button>
        </form>

        <p><a href="index.jsp">Back to Project Index</a></p>
    </main>
</body>
</html>
