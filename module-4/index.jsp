<!--JOSE VELAZQUEZ
MODULE 4.2 ASSIGNMENT
DATE: 06/28/2026
This is the main JSP page for the BookBean collection project.-->


<%@ page import="model.BookBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

    String pageTitle = "Favorite Books JavaBean Collection";

    String overallDescription = "This page uses a JavaBean to store and display information "
                              + "about books I have enjoyed reading. Each book record includes "
                              + "a category, title, author, year published, and short description.";

    /*
        Create a list to hold BookBean objects.
        Each BookBean object represents one complete book record.
    */

    List<BookBean> books = new ArrayList<BookBean>();

    books.add(new BookBean(
        "Science Fiction",
        "Project Hail Mary",
        "Andy Weir",
        2021,
        "A science fiction novel about a lone astronaut who must use science and problem-solving to survive on a distant planet."
    ));

    books.add(new BookBean(
        "Science Fiction",
        "The Martian",
        "Andy Weir",
        2011,
        "A survival story about an astronaut who must use science and problem-solving to stay alive on Mars."
    ));

    books.add(new BookBean(
        "Adventure",
        "The Alchemist",
        "Paulo Coelho",
        1988,
        "An adventure story about Santiago and his journey to find treasure."
    ));

    books.add(new BookBean(
        "Adventure",
        "The Lightning Thief",
        "Rick Riordan",
        2005,
        "A modern fantasy novel about a young boy who discovers he is a demigod."
    ));

    books.add(new BookBean(
        "Classic Literature",
        "1984",
        "George Orwell",
        1948,
        "A dystopian social science fiction novel about totalitarianism and surveillance."
    ));
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
            <h2>Overall Data Description</h2>
            <p>
                The data shown below comes from JavaBean objects created in the JSP page.
                Each object stores information about one book. The books are grouped by
                category and displayed in a table format.
            </p>
        </section>

        <section class="info-box">
            <h2>Field Descriptions</h2>

            <ul>
                <li><strong>Category:</strong> The topic or genre group for the book.</li>
                <li><strong>Title:</strong> The name of the book.</li>
                <li><strong>Author:</strong> The writer of the book.</li>
                <li><strong>Year Published:</strong> The year the book was first published.</li>
                <li><strong>Description:</strong> A short explanation of what the book is about.</li>
            </ul>
        </section>

        <section class="info-box">
            <h2>Record Description</h2>
            <p>
                Each table row represents one complete book record. Each record is stored
                as a JavaBean object using the BookBean class.
            </p>
        </section>

        <section>
            <h2>Book Records</h2>

            <table>
                <thead>
                    <tr>
                        <th>Category</th>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Year Published</th>
                        <th>Description</th>
                    </tr>
                </thead>

                <tbody>
                    <%
                        /*
                            Loop through the list of BookBean objects.
                            The getter methods are used to retrieve each field value.
                        */

                        for (BookBean book : books) {
                    %>

                    <tr>
                        <td><%= book.getCategory() %></td>
                        <td><%= book.getTitle() %></td>
                        <td><%= book.getAuthor() %></td>
                        <td><%= book.getYearPublished() %></td>
                        <td><%= book.getDescription() %></td>
                    </tr>

                    <%
                        }
                    %>
                </tbody>
            </table>
        </section>

    </main>

    <footer>
        <p>&copy; 2026 Jose Velazquez</p>
    </footer>

</body>
</html>