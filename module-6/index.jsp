<!--JOSE VELAZQUEZ
MODULE 5.3/6.3 ASSIGNMENT
DATE: 07/05/2026
This is the main JSP page for the Movies Database project.-->

<%--
    index.jsp
    CSD430 project index page holding links to the CRUD and JavaBean deliverables.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CSD430 Movies Project</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
        <h1>CSD430 Movies Database Project</h1>
        <p>
            This project uses the CSD430 MySQL database and the jose_movies_data table.
            The table stores movie records with a primary key and five additional data fields.
        </p>

        <section>
            <h2>Module JavaBean Database Display</h2>
            <ul>
                <li><a href="joseMovieSelect.jsp">Select a Movie Record</a></li>
            </ul>
        </section>
    </main>
</body>
</html>
