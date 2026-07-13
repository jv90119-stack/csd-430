<!--JOSE VELAZQUEZ
MODULE 7.2 ASSIGNMENT
DATE: 07/12/2026
This page allows the user to select a movie record from a dropdown menu.-->


<%@ page import="java.util.List" %>
<%@ page import="com.csd430.JoseMovieBean" %>
<%--
    Jose Velazquez
    Module 6 JSP Page
    This page loads all movie_id key values from the database and displays them in a dropdown menu.
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
            This form gathers the primary key values from the jose_movies_data table.
            Select one movie ID to display the matching record from the database.
        </p>

        <form action="joseMovieDisplay.jsp" method="post">
            <label for="movieId">Movie ID:</label>
            <select name="movieId" id="movieId" required>
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
