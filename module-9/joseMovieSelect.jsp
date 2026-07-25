<!--JOSE VELAZQUEZ
MODULE 9.2 ASSIGNMENT
DATE: 07/25/2026
This page allows users to select a movie record from the database.-->


<%@ page import="java.util.List" %>
<%@ page import="com.csd430.JoseMovieBean" %>
<%--
    Part 1 select page.
    This JSP gathers all primary key values and displays them in an HTML dropdown.
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
<div class="container">
    <h1>Part 1: Select a Movie Record</h1>
    <p>Select one movie_id from the dropdown menu to display the full movie record.</p>

    <div class="note">
        This page reads key values from the jose_movies_data table and submits the selected key to joseMovieDisplay.jsp.
    </div>

    <% if (movieKeys.isEmpty()) { %>
        <p>No movie records are currently available.</p>
    <% } else { %>
        <form method="post" action="joseMovieDisplay.jsp">
            <div class="form-row">
                <label for="movieId">Movie ID</label>
                <select name="movieId" id="movieId" required>
                    <% for (Integer key : movieKeys) { %>
                        <option value="<%= key %>"><%= key %></option>
                    <% } %>
                </select>
            </div>
            <input type="submit" value="Display Movie Record">
        </form>
    <% } %>

    <p><a class="button" href="index.jsp">Return to Index</a></p>
</div>
</body>
</html>
