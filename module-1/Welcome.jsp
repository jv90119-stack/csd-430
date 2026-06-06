<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<%
    String userName = "Jose";
    LocalDateTime currentDateTime = LocalDateTime.now();
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MMMM dd, yyyy hh:mm a");
    String formattedDateTime = currentDateTime.format(formatter);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JSP Example</title>
</head>
<body>
    <header>
        <h1>Welcome to My JSP Page</h1>
    </header>

    <main>
        <p>Hello!</p>

        <p>
            This page was generated using JavaServer Pages.
        </p>

        <p>
            Current date and time: <%= formattedDateTime %>
        </p>

        <%
            int number = 10;

            if (number > 5) {
        %>
                <p>The number <%= number %> is greater than 5.</p>
        <%
            } else {
        %>
                <p>The number <%= number %> is 5 or less.</p>
        <%
            }
        %>
    </main>

</body>
</html>
