<!--JOSE VELAZQUEZ
MODULE 9.2 ASSIGNMENT
DATE: 07/25/2026
This page allows users to add a new movie record to the database.-->


<%--
    Part 2 add form page.
    This JSP displays an HTML form for adding a new movie record.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Movie Record</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
    <h1>Part 2: Add a New Movie Record</h1>
    <p>Enter the movie information below. The primary key value will be automatically added by the database.</p>

    <form method="post" action="joseInsertMovie.jsp">
        <div class="form-row">
            <label for="movieTitle">Movie Title</label>
            <input type="text" name="movieTitle" id="movieTitle" required>
        </div>
        <div class="form-row">
            <label for="genre">Genre</label>
            <input type="text" name="genre" id="genre" required>
        </div>
        <div class="form-row">
            <label for="releaseYear">Release Year</label>
            <input type="number" name="releaseYear" id="releaseYear" min="1888" max="2100" required>
        </div>
        <div class="form-row">
            <label for="director">Director</label>
            <input type="text" name="director" id="director" required>
        </div>
        <div class="form-row">
            <label for="rating">Rating</label>
            <input type="text" name="rating" id="rating" required>
        </div>
        <input type="submit" value="Add Movie Record">
    </form>

    <p><a class="button" href="index.jsp">Return to Index</a></p>
</div>
</body>
</html>
