<!--JOSE VELAZQUEZ
MODULE 9.2 ASSIGNMENT
DATE: 07/25/2026
This is the main JSP page for Part 4 of the Movies Database project.-->


<%--
    Jose Velazquez
    CSD430 Project Index Page

    This JSP provides navigation links to each project module deliverable.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CSD430 Movies Database Project</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
    <h1>CSD430 Movies Database Project</h1>

    <div class="description">
        <p>
            This project uses the CSD430 MySQL database and the jose_movies_data table.
            The project demonstrates creating, reading, adding, updating, and deleting movie records
            through JSP pages and Java source code.
        </p>
    </div>

    <h2>Project Navigation</h2>
    <div class="links">
        <a href="joseMovieSelect.jsp">Project Part 1: Select and Display Movie Record</a>
        <a href="joseAddMovie.jsp">Project Part 2: Add a New Movie Record</a>
        <a href="joseUpdateSelect.jsp">Project Part 3: Update a Movie Record</a>
        <a href="joseDeleteMovie.jsp">Project Part 4: Delete a Movie Record</a>
        <a href="joseDisplayAllMovies.jsp">Display All Movie Records</a>
    </div>

    <h2>Database Information</h2>
    <table>
        <thead>
        <tr>
            <th>Item</th>
            <th>Value</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Database Name</td>
            <td>CSD430</td>
        </tr>
        <tr>
            <td>Table Name</td>
            <td>jose_movies_data</td>
        </tr>
        <tr>
            <td>Username</td>
            <td>student1</td>
        </tr>
        <tr>
            <td>Password</td>
            <td>pass</td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
