<!--JOSE VELAZQUEZ
MODULE 10.2 ASSIGNMENT
DATE: 08/02/2026
This is the main JSP page for the custom tag example.-->


<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="app" uri="https://example.com/custom-tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Custom Tag Example</title>
</head>
<body>
    <h1>Customer Page</h1>
    <app:greeting name="Jose" />
</body>
</html>