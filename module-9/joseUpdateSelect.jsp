<!--JOSE VELAZQUEZ
MODULE 9.2 ASSIGNMENT
DATE: 07/25/2026
This page allows users to select a movie record for updating.-->


<%@ page import="java.util.List" %>
<%@ page import="com.csd430.JoseMovieBean" %>
<%--
    Part 3 update select page.
    This JSP displays all key values so the user can choose which record to update.
--%>
<%
    List<Integer> movieKeys = JoseMovieBean.getMovieKeys();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Select Movie to Update</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
    <h1>Part 3: Update a Movie Record</h1>
    <p>Select the movie_id for the record that needs to be updated.</p>

    <% if (movieKeys.isEmpty()) { %>
        <p>No movie records are currently available to update.</p>
    <% } else { %>
        <form method="post" action="joseUpdateForm.jsp">
            <div class="form-row">
                <label for="movieId">Movie ID</label>
                <select name="movieId" id="movieId" required>
                    <% for (Integer key : movieKeys) { %>
                        <option value="<%= key %>"><%= key %></option>
                    <% } %>
                </select>
            </div>
            <input type="submit" value="Load Movie Record">
        </form>
    <% } %>

    <p><a class="button" href="index.jsp">Return to Index</a></p>
</div>
</body>
</html>
