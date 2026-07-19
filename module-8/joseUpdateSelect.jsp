<!--JOSE VELAZQUEZ
MODULE 8.2 ASSIGNMENT
DATE: 07/19/2026
This page allows users to update an existing movie record in the database.-->


<%@ page import="java.util.List" %>
<%@ page import="com.csd430.JoseMovieBean" %>
<%--
    Jose Velazquez
    CSD430 Project Part 3
    This JSP loads all primary key values from the jose_movies_data table
    and places them in a dropdown menu for selecting a record to update.
--%>
<%
    List<Integer> movieKeys = JoseMovieBean.getMovieKeys();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Movie Record</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
        <h1>Project Part 3: Update a Movie Record</h1>
        <p>
            Select the primary key value for the movie record you would like to update.
            The next page will display the selected record in a form where the non-key fields can be changed.
        </p>

        <section class="info-box">
            <h2>Database Information</h2>
            <p><strong>Database:</strong> CSD430</p>
            <p><strong>Table:</strong> jose_movies_data</p>
            <p><strong>Primary Key Field:</strong> movie_id</p>
        </section>

        <form action="joseUpdateForm.jsp" method="post">
            <label for="movieId">Movie ID:</label>
            <select id="movieId" name="movieId" required>
                <option value="">-- Select a Movie ID --</option>
                <% for (Integer key : movieKeys) { %>
                    <option value="<%= key %>"><%= key %></option>
                <% } %>
            </select>

            <button type="submit">Load Movie Record</button>
        </form>

        <p><a href="index.jsp">Return to Project Index</a></p>
    </main>
</body>
</html>
