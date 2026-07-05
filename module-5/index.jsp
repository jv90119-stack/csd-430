<!--JOSE VELAZQUEZ
MODULE 5.2/6.2 ASSIGNMENT
DATE: 07/05/2026
This is the main JSP page for the Movies Database project.-->

<%--
    index.jsp
    CSD430 Module CRUD Deliverables Index
    Student: Jose Velazquez
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CSD430 Movies Database Project</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 30px;
            line-height: 1.6;
        }
        h1, h2 {
            color: #333333;
        }
        ul {
            list-style-type: square;
        }
        a {
            color: #0056b3;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>CSD430 Movies Database Project</h1>
    <p>This index page contains links to the CRUD deliverables for the Movies database table.</p>

    <h2>Module Deliverables</h2>
    <ul>
        <li><a href="josecreateTable.php">Create Movies Table</a></li>
        <li><a href="josepopulateTable.php">Populate Movies Table</a></li>
        <li><a href="josedropTable.php">Drop Movies Table</a></li>
    </ul>

    <h2>Database Information</h2>
    <p><strong>Database:</strong> CSD430</p>
    <p><strong>Username:</strong> student1</p>
    <p><strong>Password:</strong> pass</p>
    <p><strong>Table:</strong> jose_movies_data</p>
</body>
</html>
