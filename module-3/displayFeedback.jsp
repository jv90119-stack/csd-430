<!--JOSE VELAZQUEZ
MODULE 3.2 ASSIGNMENT
DATE: 06/19/2026
This is a JSP page that references external CSS stylesheets. It displays the 
submitted feedback data in a formatted table. -->


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

    request.setCharacterEncoding("UTF-8");

    String pageTitle = "Submitted Restaurant Feedback";
    String dataDescription = "The table below displays the information submitted by the customer through the feedback form.";

    String customerName = request.getParameter("customerName");
    String visitDate = request.getParameter("visitDate");
    String mealType = request.getParameter("mealType");
    String serviceRating = request.getParameter("serviceRating");
    String foodQuality = request.getParameter("foodQuality");
    String recommend = request.getParameter("recommend");
    String comments = request.getParameter("comments");

    /*
        Basic null checking is used in case the display page is opened directly
        without submitting the form first.
    */

    if (customerName == null) {
        customerName = "No data submitted";
    }

    if (visitDate == null) {
        visitDate = "No data submitted";
    }

    if (mealType == null) {
        mealType = "No data submitted";
    }

    if (serviceRating == null) {
        serviceRating = "No data submitted";
    }

    if (foodQuality == null) {
        foodQuality = "No data submitted";
    }

    if (recommend == null) {
        recommend = "No data submitted";
    }

    if (comments == null) {
        comments = "No data submitted";
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= pageTitle %></title>
    <link rel="stylesheet" href="styles/style.css">
</head>

<body>

    <header>
        <h1><%= pageTitle %></h1>
        <p><%= dataDescription %></p>
    </header>

    <main>

        <section class="info-box">
            <h2>Overall Data Description</h2>
            <p>
                This page shows the restaurant feedback submitted by the user.
                The data includes customer information, visit details, ratings,
                recommendation response, and written comments.
            </p>
        </section>

        <section class="info-box">
            <h2>Field and Record Descriptions</h2>

            <ul>
                <li><strong>Field:</strong> The name of the information collected from the form.</li>
                <li><strong>Submitted Data:</strong> The value entered or selected by the user.</li>
                <li><strong>Record:</strong> One complete restaurant feedback submission.</li>
            </ul>
        </section>

        <section>
            <h2>Customer Feedback Record</h2>

            <table>
                <thead>
                    <tr>
                        <th>Field</th>
                        <th>Submitted Data</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td>Customer Name</td>
                        <td><%= customerName %></td>
                    </tr>

                    <tr>
                        <td>Visit Date</td>
                        <td><%= visitDate %></td>
                    </tr>

                    <tr>
                        <td>Meal Type</td>
                        <td><%= mealType %></td>
                    </tr>

                    <tr>
                        <td>Service Rating</td>
                        <td><%= serviceRating %></td>
                    </tr>

                    <tr>
                        <td>Food Quality Rating</td>
                        <td><%= foodQuality %> out of 5</td>
                    </tr>

                    <tr>
                        <td>Recommend Restaurant</td>
                        <td><%= recommend %></td>
                    </tr>

                    <tr>
                        <td>Additional Comments</td>
                        <td><%= comments %></td>
                    </tr>
                </tbody>
            </table>

            <div class="button-row">
                <a class="button-link" href="feedbackForm.jsp">Return to Feedback Form</a>
            </div>
        </section>

    </main>

    <footer>
        <p>&copy; 2026 Jose Velazquez</p>
    </footer>

</body>
</html>