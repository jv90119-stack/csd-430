<!--JOSE VELAZQUEZ
MODULE 2.2 ASSIGNMENT
DATE: 06/13/2026
This is a JSP page that references external CSS stylesheets. -->


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    /*
        Assignment: Dynamic HTML Page Using JSP Scriptlets
        Student: Jose Velazquez

        Description:
        This JSP page uses Java Scriptlets to store and organize book data.
        The HTML table displays books grouped into genres.
        All Java code is placed inside Scriptlet sections, while HTML tags
        remain outside of the Scriptlets.
    */

    String pageTitle = "Favorite Books Collection";
    String overallDescription = "This page displays a small collection of books I have enjoyed reading. "
                              + "The books are grouped by genre and include the title, author, and year published.";

    String[] categories = {
        "Science Fiction",
        "Adventure",
        "Classic Literature"
    };

    String[][] books = {
        {"Science Fiction", "Project Hail Mary", "Andy Weir", "2022"},
        {"Science Fiction", "The Martian", "Andy Weir", "2011"},
        {"Adventure", "The Alchemist", "Paulo Coelho", "1988"},
        {"Adventure", "The Lightning Thief", "Rick Riordan", "2005"},
        {"Classic Literature", "1984", "George Orwell", "1948"},
        {"Classic Literature", "Fahrenheit 451", "Ray Bradbury", "1953"}
    };
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
        <p><%= overallDescription %></p>
    </header>

    <main>

        <section class="info-box">
            <h2>Data Description</h2>
            <p>
                The records below represent books that are grouped by genre.
                Each record contains three main fields: book title, author, and publication year.
            </p>
        </section>

        <section class="info-box">
            <h2>Field Descriptions</h2>

            <ul>
                <li><strong>Title:</strong> The name of the book.</li>
                <li><strong>Author:</strong> The person who wrote the book.</li>
                <li><strong>Year Published:</strong> The year the book was first published.</li>
            </ul>
        </section>

        <section>
            <h2>Book Records by Category</h2>

            <%
                /*
                    This outer loop goes through each category.
                    The inner loop checks each book record and displays
                    only the books that match the current category.
                */
                for (int i = 0; i < categories.length; i++) {
                    String currentCategory = categories[i];
            %>

            <h3><%= currentCategory %></h3>

            <table>
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Year Published</th>
                    </tr>
                </thead>

                <tbody>
                    <%
                        for (int j = 0; j < books.length; j++) {
                            if (books[j][0].equals(currentCategory)) {
                    %>

                    <tr>
                        <td><%= books[j][1] %></td>
                        <td><%= books[j][2] %></td>
                        <td><%= books[j][3] %></td>
                    </tr>

                    <%
                            }
                        }
                    %>
                </tbody>
            </table>

            <%
                }
            %>

        </section>

    </main>

    <footer>
        <p>&copy; 2026 Jose Velazquez</p>
    </footer>

</body>
</html>