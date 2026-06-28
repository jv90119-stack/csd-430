<!--JOSE VELAZQUEZ
MODULE 3.2 ASSIGNMENT
DATE: 06/19/2026
This is a JSP page that references external CSS stylesheets. The page displays a form
for collecting restaurant feedback. -->


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("UTF-8");
    String pageTitle = "Restaurant Meal and Service Feedback Form";
    String pageDescription = "Please complete the form below to provide feedback about your restaurant experience.";
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
        <p><%= pageDescription %></p>
    </header>

    <main>

        <section class="info-box">
            <h2>Overall Data Description</h2>
            <p>
                This form gathers information about a customer’s restaurant experience.
                The collected data includes the customer’s name, visit date, meal type,
                service rating, food quality rating, recommendation choice, and additional comments.
            </p>
        </section>

        <section class="info-box">
            <h2>Field Descriptions</h2>

            <ul>
                <li><strong>Customer Name:</strong> The name of the person submitting the feedback.</li>
                <li><strong>Visit Date:</strong> The date the customer visited the restaurant.</li>
                <li><strong>Meal Type:</strong> The type of meal the customer had, such as breakfast, lunch, or dinner.</li>
                <li><strong>Service Rating:</strong> The customer’s rating of the service received.</li>
                <li><strong>Food Quality:</strong> The customer’s rating of the meal quality.</li>
                <li><strong>Recommend Restaurant:</strong> Whether the customer would recommend the restaurant to others.</li>
                <li><strong>Comments:</strong> Additional feedback from the customer.</li>
            </ul>
        </section>

        <section class="form-box">
            <h2>Feedback Form</h2>

            <form action="displayFeedback.jsp" method="post">

                <label for="customerName">Customer Name:</label>
                <input type="text" id="customerName" name="customerName" required>

                <label for="visitDate">Visit Date:</label>
                <input type="date" id="visitDate" name="visitDate" required>

                <label for="mealType">Meal Type:</label>
                <select id="mealType" name="mealType" required>
                    <option value="">-- Select Meal Type --</option>
                    <option value="Breakfast">Breakfast</option>
                    <option value="Lunch">Lunch</option>
                    <option value="Dinner">Dinner</option>
                    <option value="Dessert">Dessert</option>
                </select>

                <label for="serviceRating">Service Rating:</label>
                <select id="serviceRating" name="serviceRating" required>
                    <option value="">-- Select Rating --</option>
                    <option value="Excellent">Excellent</option>
                    <option value="Good">Good</option>
                    <option value="Average">Average</option>
                    <option value="Poor">Poor</option>
                </select>

                <label for="foodQuality">Food Quality Rating:</label>
                <input type="number" id="foodQuality" name="foodQuality" min="1" max="5" required>
                <small>Enter a number from 1 to 5, with 5 being the best.</small>

                <p class="radio-title">Would you recommend this restaurant?</p>

                <div class="radio-group">
                    <input type="radio" id="recommendYes" name="recommend" value="Yes" required>
                    <label for="recommendYes">Yes</label>

                    <input type="radio" id="recommendNo" name="recommend" value="No">
                    <label for="recommendNo">No</label>
                </div>

                <label for="comments">Additional Comments:</label>
                <textarea id="comments" name="comments" rows="5" required></textarea>

                <div class="button-row">
                    <input type="submit" value="Submit Feedback">
                    <input type="reset" value="Clear Form">
                </div>

            </form>
        </section>

    </main>

    <footer>
        <p>&copy; 2026 Jose Velazquez</p>
    </footer>

</body>
</html>